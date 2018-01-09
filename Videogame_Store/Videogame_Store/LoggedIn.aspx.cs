using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Videogame_Store
{
    public partial class LoggedIn : System.Web.UI.Page
    {
        String name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            name = (String)(Session["uname"]);
            userLabel.Text = name;

        }

        protected void checkDispEventMethod(object sender, EventArgs e)
        {
            Response.Redirect("checkDisp.aspx", false);
        }
        protected void execTransEventMethod(object sender, EventArgs e)
        {
            Response.Redirect("execTrans.aspx", false);
        }
        protected void viewVgEventMethod(object sender, EventArgs e)
        {
            Response.Redirect("showData.aspx", false);
        }
        protected void manageReservationsEventMethod(object sender, EventArgs e)
        {
            Response.Redirect("handleBook.aspx", false);
        }
        protected void logoutEventMethod(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
        protected void insSubEventMethod(object sender, EventArgs e)
        {
            Response.Redirect("AddSub.aspx", false);
        }
        protected void insEmpEventMethod(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx", false);
        }
    }
}