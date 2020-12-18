using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class ContactClients : System.Web.UI.Page
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

        protected void btnLienHe_Click(object sender, EventArgs e)
        {
            try
            {
                Restaurant003.App_Code.LienHe lh = new Restaurant003.App_Code.LienHe();
                lh.ten = txtTen.Text;
                lh.email = txtEmail.Text;
                lh.chuThich = txtChuThich.Text;
                data.ThemLienHe(lh);
                txtTen.Text = "";
                txtEmail.Text = "";
                txtChuThich.Text = "";
                lblMessage.Text = "Gửi liên hệ thành công";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Có lỗi: " + ex.Message;
            }
            
        }
        protected void logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }
    }
}