using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant003
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                username.Text = Session["email"].ToString().Substring(0, 8);
                btndn.Visible = false;
                btndk.Visible = false;

            }
            else
            {
                username.Text = "Tài khoản";
                btndx.Visible = false;
            }
        }
        protected void logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }
    }
}