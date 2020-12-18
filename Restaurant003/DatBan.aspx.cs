using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;


namespace Restaurant003
{
    public partial class DatBan : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
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

        protected void btnDatBan_Click(object sender, EventArgs e)
        {
            Restaurant003.App_Code.YeuCauDatBan yc = new Restaurant003.App_Code.YeuCauDatBan();
            yc.hoten = txtTen.Text;
            yc.email = txtEmail.Text;
            yc.soDt = txtSoDt.Text;
            yc.soLuongKhach = int.Parse(ddlSoLuongKhach.SelectedValue);
            yc.ngay = DateTime.Now;
            data.ThemYcDatBan(yc);
        }
        protected void logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }
    }
}