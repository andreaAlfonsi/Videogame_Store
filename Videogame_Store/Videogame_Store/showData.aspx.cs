using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Videogame_Store
{
    public partial class showData : System.Web.UI.Page
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
            String connS = System.Configuration.ConfigurationManager.ConnectionStrings["VideogameStore_String"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connS);
            conn.Open();
            query = "SELECT * FROM tbl_videogioco WHERE descr='" + nameTextBox.Text + "';";
            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            reader = command.ExecuteReader();
            String console = "",sviluppatore="",produttore="";
            int age=0, id_sv = 0, id_p = 0;
            while (reader.HasRows && reader.Read())
            {
                age = reader.GetInt32(reader.GetOrdinal("age"));
                console = reader.GetString(reader.GetOrdinal("console"));
                id_sv= reader.GetInt32(reader.GetOrdinal("id_svil"));
                id_p = reader.GetInt32(reader.GetOrdinal("id_pbl"));
            }
            if (!reader.HasRows)
            {
                Response.Write("<script>alert('Videogame not found')</script>");
            }
            reader.Close();
            query = "SELECT descr FROM tbl_publisher WHERE COD_pbl='" + id_p + "';";
            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            reader = command.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {            
                produttore = reader.GetString(reader.GetOrdinal("descr"));
            }
            reader.Close();
            query = "SELECT descr FROM tbl_sviluppatore WHERE COD_svil='" + id_sv + "';";
            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            reader = command.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                sviluppatore = reader.GetString(reader.GetOrdinal("descr"));
            }
            reader.Close();
            ageLabel.Text = age.ToString();
            consoleLabel.Text = console.ToString();
            sviluppatoreLabel.Text = sviluppatore.ToString();
            produttoreLabel.Text = produttore.ToString();
            query = "select tbl_genere.descr from tbl_genere inner join tbl_tipologia on tbl_genere.cod_gn=tbl_tipologia.id_gn inner join tbl_videogioco on tbl_tipologia.id_vdg=tbl_videogioco.cod_vdg where cod_vdg=(select cod_vdg from tbl_videogioco where descr='" + nameTextBox.Text + "');";
            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            reader = command.ExecuteReader();
            genreList.Items.Clear();
            while (reader.HasRows && reader.Read())
            {
                String genre = reader.GetString(reader.GetOrdinal("descr"));
                genreList.Items.Add(genre);
            }
        }
        protected void backMethod(object sender, EventArgs e)
        {
            Response.Redirect("loggedIn.aspx", false);
        }
    }
}