using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class DangKyClient : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            try
            {
                TaiKhoanKhach t = new TaiKhoanKhach();
                t.email = txtEmail.Text;
                t.matKhau = txtMatKhau.Text;
                data.ThemTkKhach(t);
                message.Text = "Đăng ký thành công";
                Response.Redirect("DangNhap.aspx");

            }
            catch (Exception ex)
            {
                message.Text = "Có lỗi: " + ex.Message;
            }
            
        }
    }
}