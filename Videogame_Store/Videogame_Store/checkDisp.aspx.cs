using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Videogame_Store
{
    public partial class checkDisp : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand command;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String query = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void viewMethod(object sender, EventArgs e)
        {
            if (nameTextBox.Text=="")
                Response.Write("<script>alert('Insert item')</script>");
            else if(ProductType.SelectedIndex==0)
                Response.Write("<script>alert('Select a type')</script>");
            else
            {
                String connS = System.Configuration.ConfigurationManager.ConnectionStrings["VideogameStore_String"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connS);
                conn.Open();
                switch (ProductType.SelectedIndex)
                {
                    case 1:
                        query = "SELECT qnt FROM tbl_videogioco where descr='" + nameTextBox.Text + "';";
                        break;
                    case 2:
                        query = "SELECT qnt FROM tbl_console where descr='" + nameTextBox.Text + "';";
                        break;
                    case 3:
                        query = "SELECT qnt FROM tbl_accessorio where descr='" + nameTextBox.Text + "';";
                        break;
                }
                command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                reader = command.ExecuteReader();
                int qnt = 0;
                while (reader.HasRows && reader.Read())
                {
                    qnt = reader.GetInt32(reader.GetOrdinal("qnt"));

                }
                if (!reader.HasRows)
                {
                    Response.Write("<script>alert('Item not found')</script>");
                }
                reader.Close();
                labelData.Text = qnt.ToString();
            }
            
        }

        protected void backMethod(object sender, EventArgs e)
        {
            Response.Redirect("loggedIn.aspx", false);
        }
    }
}