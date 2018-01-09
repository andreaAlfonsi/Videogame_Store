using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Videogame_Store
{
    public partial class AddSub : System.Web.UI.Page
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

            query = "INSERT INTO tbl_abbonato (name,surname,birthdate,telephone,address) VALUES " +
                "( '" + nameTextBox.Text + "','" + surnameTextBox.Text + "','" + birthDateTextBox.Text + "','" +
                telephoneTextBox.Text + "','" + addressTextBox.Text + "');";

            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            command.ExecuteReader();

            conn.Close();
            Response.Write("<script>alert('Abbonato inserito')</script>");
            nameTextBox.Text = "";
            surnameTextBox.Text = "";
            birthDateTextBox.Text = "";
            telephoneTextBox.Text = "";
            addressTextBox.Text = "";
        }
        protected void backMethod(object sender, EventArgs e)
        {
            Response.Redirect("loggedIn.aspx", false);
        }
    }
}