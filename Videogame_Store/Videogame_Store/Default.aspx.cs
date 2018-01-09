using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Videogame_Store
{
    public partial class Default : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand command;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String query = "";
        String name = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitEventMethod(object sender, EventArgs e)
        {
            String connS = System.Configuration.ConfigurationManager.ConnectionStrings["VideogameStore_String"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connS);
            conn.Open();
            query = "SELECT * FROM tbl_dipendente WHERE COD_dp="+ Convert.ToInt32(usernameTextBox.Text)+" AND password='" + passwordTextBox.Text+"';";
            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            reader = command.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                 name = reader.GetString(reader.GetOrdinal("name"));
            }
            if (reader.HasRows)
            {
                Session["uname"] = name;
                Response.BufferOutput = true;
                Response.Redirect("LoggedIn.aspx",false);
            }
            else
            {
                passwordTextBox.Text = "User non trovato";
            }
            reader.Close();
            conn.Close();
        }
    }
}