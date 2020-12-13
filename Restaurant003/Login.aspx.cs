using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class Login : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if(data.KiemTraTaiKhoan(txtTenDangNhap.Text, txtMatKhau.Text) == 1)
            {
                Session["username"] = txtTenDangNhap.Text;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                error.Text = "Vui lòng kiểm tra lại thông tin đăng nhập";
            }
        }
    }
}