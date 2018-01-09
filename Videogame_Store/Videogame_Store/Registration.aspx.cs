using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Videogame_Store
{
    public partial class Registration : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand command;
        String query = "";
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerEventMethod(object sender, EventArgs e)
        {
            registerUser();
        }

        private void registerUser()
        {
            String connS = System.Configuration.ConfigurationManager.ConnectionStrings["VideogameStore_String"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connS);
            conn.Open();

            query = "INSERT INTO tbl_dipendente (name,surname,birthdate,city,telephone,address,work_since,id_pv,password) VALUES " +
                "( '" + nameTextBox.Text + "','" + surnameTextBox.Text + "','" + birthDateTextBox.Text + "','" + birthPlaceTextBox.Text + "','" 
                + telephoneTextBox.Text + "','" + addressTextBox.Text + "','" + firstDateOfWorkTextBox.Text + "'," + workplaceIDTextBox.Text + ",'" +
                passwordTextBox.Text + "');";

            command = new MySql.Data.MySqlClient.MySqlCommand(query,conn);
            command.ExecuteReader();
            Response.Write("<script>alert('Dipendente inserito')</script>");
            conn.Close();
            
        }
    }
}