using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class DangNhap : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (data.KiemTraTkKhach(txtEmail.Text, txtMatKhau.Text) == 1)
            {
                Session["email"] = txtEmail.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                message.Text = "Vui lòng kiểm tra lại thông tin đăng nhập";
            }
        }
    }
}