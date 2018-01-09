using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Videogame_Store
{
    public partial class handleBook : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand command;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        int qnt = 0, id=0, price=0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BackEvent(object sender, EventArgs e)
        {
            Response.Redirect("LoggedIn.aspx", false);
        }

        protected void manageEvent(object sender, EventArgs e)
        {
            String connS = System.Configuration.ConfigurationManager.ConnectionStrings["VideogameStore_String"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connS);
            conn.Open();

            String query = "";
            string today = DateTime.Today.ToString("yy-mm-dd");

            if (nameTextBox.Text == "")
            {
                Response.Write("<script>alert('Insert name')</script>");
            }
            else
            {
                query = "Select qntReserved, price, cod_vdg from tbl_videogioco where descr = '" + nameTextBox.Text + "';";
                command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                reader = command.ExecuteReader();
                while (reader.HasRows && reader.Read())
                {
                    qnt = reader.GetInt32(reader.GetOrdinal("qntReserved"));
                    price = reader.GetInt32(reader.GetOrdinal("price"));
                    id = reader.GetInt32(reader.GetOrdinal("cod_vdg"));
                }
                if (!reader.HasRows)
                {
                    Response.Write("<script>alert('Name not found')</script>");
                }
                reader.Close();
                if (qnt > 0){
                    query = "insert into tbl_transazione (datee, price, tipo, id_pv)values('" + today + "' , " + price + ",0,1);";
                    command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                    command.ExecuteReader();
                    conn.Close();
                    conn.Open();
                    query = "SELECT MAX(COD_tr) as max FROM tbl_transazione;";
                    command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                    reader = command.ExecuteReader();
                    int id_tr = 0;
                    while (reader.HasRows && reader.Read())
                    {
                        id_tr = reader.GetInt32(reader.GetOrdinal("max"));
                    }
                    conn.Close();
                    conn.Open();
                    query = "insert into tbl_contiene_vdg (id_vdg, id_tr, qnt)values(" + id + " , " + id_tr + "," + 1 + ");";
                    command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                    command.ExecuteReader();
                    conn.Close();
                    conn.Open();
                    query = "update tbl_videogioco set qntReserved=qntReserved-1 where descr='" + nameTextBox.Text + "';";
                    command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                    reader.Close();
                    command.ExecuteReader();
                    Response.Write("<script>alert('Money:" + (price - 5) + "')</script>");
                }
                else
                    Response.Write("<script>alert('Not enough copies')</script>");
            }
        }
    }
}