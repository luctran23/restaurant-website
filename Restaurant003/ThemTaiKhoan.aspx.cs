using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class ThemTaiKhoan : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                Restaurant003.App_Code.TaiKhoan m = new Restaurant003.App_Code.TaiKhoan();
                m.tenTk = txtTentk.Text;
                m.mk = txtMatKhau.Text;
                
                data.ThemTaiKhoan(m);
            }
            catch (Exception ex)
            {
                message.Text = "Co loi xay ra: " + ex.Message;
            }
        }
    }
}