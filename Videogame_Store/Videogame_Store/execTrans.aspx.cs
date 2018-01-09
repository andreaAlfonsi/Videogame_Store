using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Videogame_Store
{
    public partial class execTrans : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand command;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        String query = "";
        int totalPrice = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
        

        }



        protected void BackEvent(object sender, EventArgs e)
        {
            Response.Redirect("LoggedIn.aspx", false);
        }

        protected void addEvent(object sender, EventArgs e)
        {
            addProduct();
        }

        private void addProduct()
        {
            String connS = System.Configuration.ConfigurationManager.ConnectionStrings["VideogameStore_String"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connS);
            conn.Open();
            String productName = productTextBox.Text;
            int count = Convert.ToInt32(qntTBox.Text);
            switch (ProductType.SelectedIndex)
            {
                case 1:
                    query = "SELECT COD_vdg , price , qnt FROM tbl_videogioco WHERE descr='" + productName + "';";
                    command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                    reader = command.ExecuteReader();
                    while (reader.HasRows && reader.Read())
                    {
                        int count2 = reader.GetInt32(reader.GetOrdinal("qnt"));
                        if (count2 - count >= 0 || transType.SelectedIndex!=1 )
                        {
                            codList.Items.Add(reader.GetInt32(reader.GetOrdinal("COD_vdg")).ToString());
                            nameList.Items.Add(productName);
                            qntList.Items.Add(count.ToString());
                            moneyList.Items.Add(reader.GetFloat(reader.GetOrdinal("price")).ToString());
                            typeList.Items.Add(ProductType.SelectedIndex.ToString());
                        }
                        else
                            Response.Write("<script>alert('Not enough copies')</script>");
                    }
                    if (!reader.HasRows)
                    {
                        Response.Write("<script>alert('Product not found')</script>");
                    }
                    break;
                case 2:
                    query = "SELECT COD_cn , price , qnt FROM tbl_console WHERE descr='" + productName + "';";
                    command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                    reader = command.ExecuteReader();
                    while (reader.HasRows && reader.Read())
                    {
                        int count2 = reader.GetInt32(reader.GetOrdinal("qnt"));
                        if (count2 - count >= 0 || transType.SelectedIndex != 1)
                        {
                            codList.Items.Add(reader.GetInt32(reader.GetOrdinal("COD_cn")).ToString());
                            nameList.Items.Add(productName);
                            qntList.Items.Add(count.ToString());
                            moneyList.Items.Add(reader.GetFloat(reader.GetOrdinal("price")).ToString());
                            typeList.Items.Add(ProductType.SelectedIndex.ToString());
                        }
                        else
                            Response.Write("<script>alert('Not enough copies')</script>");
                    }
                    if (!reader.HasRows)
                    {
                        Response.Write("<script>alert('Product not found')</script>");
                    }
                    break;
                case 3:
                    query = "SELECT COD_ac , price , qnt FROM tbl_accessorio WHERE descr='" + productName + "';";
                    command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                    reader = command.ExecuteReader();
                    while (reader.HasRows && reader.Read())
                    {
                        int count2 = reader.GetInt32(reader.GetOrdinal("qnt"));
                        if (count2 - count >= 0 || transType.SelectedIndex != 1)
                        {
                            codList.Items.Add(reader.GetInt32(reader.GetOrdinal("COD_ac")).ToString());
                            nameList.Items.Add(productName);
                            qntList.Items.Add(count.ToString());
                            moneyList.Items.Add(reader.GetFloat(reader.GetOrdinal("price")).ToString());
                            typeList.Items.Add(ProductType.SelectedIndex.ToString());
                        }
                        else
                            Response.Write("<script>alert('Not enough copies')</script>");
                    }
                    if (!reader.HasRows)
                    {
                        Response.Write("<script>alert('Product not found')</script>");
                    }
                    break;
            }
            reader.Close();
            conn.Close();
        }

        protected void insertEvent(object sender, EventArgs e)
        {
            insertTransaction();
        }

        private void insertTransaction()
        {
            if (moneyList.Items.Count <= 0)
            {
                Response.Write("<script>alert('Inserire prodotti')</script>");
            }
            else
            {
                String connS = System.Configuration.ConfigurationManager.ConnectionStrings["VideogameStore_String"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connS);
                conn.Open();
                int id_pv = Convert.ToInt32(idTextBox.Text);
                int id_sub = 0;
                findAmount();
                if (subTextBox.Text != "")
                    id_sub = Convert.ToInt32(subTextBox.Text);
                string today = DateTime.Today.ToString("yy-mm-dd");
                if (SubscriberCb.Checked)
                {
                    query = "INSERT INTO tbl_transazione(datee, price, tipo, id_ab, id_pv)values('" + today + "', " + totalPrice + "," + ((transType.SelectedIndex) - 1) + "," + id_sub + ", " + id_pv + "); ";
                }
                else
                {
                    query = "INSERT INTO tbl_transazione(datee,price,tipo,id_pv)values('" + today + "'," + totalPrice + "," + ((transType.SelectedIndex) - 1) + "," + id_pv + "); ";
                }
                command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                command.ExecuteReader();
                query = "SELECT MAX(COD_tr) as max FROM tbl_transazione;";
                conn.Close();
                conn.Open();
                command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                reader = command.ExecuteReader();
                int id_tr = 0;
                while (reader.HasRows && reader.Read())
                {
                    id_tr = reader.GetInt32(reader.GetOrdinal("max"));
                }
                reader.Close();
                conn.Close();
                conn.Open();
                for (int i = 0; i < qntList.Items.Count; i++)
                {
                    int productType = Convert.ToInt32(typeList.Items[i].ToString());
                    switch (productType)
                    {
                        case 1:
                            query = "insert into tbl_contiene_vdg(id_vdg, id_tr, qnt) values (" + Convert.ToInt32(codList.Items[i].ToString()) + "," + id_tr + "," + Convert.ToInt32(qntList.Items[i].ToString()) + ");";
                            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                            command.ExecuteReader();
                            conn.Close();
                            updateCopies(Convert.ToInt32(codList.Items[i].ToString()), 1, Convert.ToInt32(qntList.Items[i].ToString()));
                            break;
                        case 2:
                            query = "insert into tbl_contiene_cn(id_cn, id_tr, qnt) values (" + Convert.ToInt32(codList.Items[i].ToString()) + "," + id_tr + "," + Convert.ToInt32(qntList.Items[i].ToString()) + ");";
                            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                            command.ExecuteReader();
                            conn.Close();
                            updateCopies(Convert.ToInt32(codList.Items[i].ToString()), 2, Convert.ToInt32(qntList.Items[i].ToString()));

                            break;
                        case 3:
                            query = "insert into tbl_contiene_ac(id_ac, id_tr, qnt) values (" + Convert.ToInt32(codList.Items[i].ToString()) + "," + id_tr + "," + Convert.ToInt32(qntList.Items[i].ToString()) + ");";
                            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
                            command.ExecuteReader();
                            conn.Close();
                            updateCopies(Convert.ToInt32(codList.Items[i].ToString()), 3, Convert.ToInt32(qntList.Items[i].ToString()));

                            break;
                    }

                    conn.Open();
                }

                nameList.Items.Clear();
                moneyList.Items.Clear();
                qntList.Items.Clear();
                codList.Items.Clear();
                typeList.Items.Clear();
                totalPrice = 0;
                conn.Close();
            }
        }

        private void findAmount() {
            totalPrice = 0;
            foreach (var v in moneyList.Items) {
                totalPrice += (int)Convert.ToDouble(v.ToString());
            }
            if (transType.SelectedIndex == 1)
            {
                Response.Write("<script>alert('Spesa totale = " + totalPrice + "')</script>");
            }
            if (transType.SelectedIndex == 2 && SubscriberCb.Checked)
            {
                totalPrice = (totalPrice / 4 + totalPrice / 40);
                Response.Write("<script>alert('Soldi da dare al cliente = " + totalPrice + "')</script>");
            }
            if (transType.SelectedIndex == 2 && !SubscriberCb.Checked)
            {
                totalPrice = totalPrice / 4;
                Response.Write("<script>alert('Soldi da dare al cliente = " + totalPrice + "')</script>");
            }
            if (transType.SelectedIndex == 3)
            {
                totalPrice = 5 * moneyList.Items.Count;
                Response.Write("<script>alert('Acconto = " + totalPrice + "')</script>");
            }
        }

        private void updateCopies(int codice, int type, int qnt) {
            conn.Open();
            if (transType.SelectedIndex == 1)
            {
                switch (type)
                {
                    case 1:
                        query = "update tbl_videogioco set qnt=qnt-" + qnt + " where cod_vdg=" + codice + ";";
                        break;
                    case 2:
                        query = "update tbl_console set qnt=qnt-" + qnt + " where cod_cn=" + codice + ";";
                        break;
                    case 3:
                        query = "update tbl_accessorio set qnt=qnt-" + qnt + " where cod_ac=" + codice + ";";
                        break;
                }
            }
            else
                 if (transType.SelectedIndex == 2)
                 {
                    switch (type)
                    {
                        case 1:
                            query = "update tbl_videogioco set qnt=qnt+" + qnt + " where cod_vdg=" + codice + ";";
                            break;
                        case 2:
                            query = "update tbl_console set qnt=qnt+" + qnt + " where cod_cn=" + codice + ";";
                            break;
                        case 3:
                            query = "update tbl_accessorio set qnt=qnt+" + qnt + " where cod_ac=" + codice + ";";
                            break;
                    }
                 }
            else
                query = "update tbl_videogioco set qntreserved=qntreserved+" + qnt + " where cod_vdg=" + codice + ";";

            command = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            command.ExecuteReader();
            conn.Close();
        }

    }
}