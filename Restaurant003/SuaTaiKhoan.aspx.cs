using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class SuaTaiKhoan : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Restaurant003.App_Code.TaiKhoan t = (Restaurant003.App_Code.TaiKhoan)Session["taikhoan"];
                txtMaTk.Text = t.maTk.ToString();
                txtTentk.Text = t.tenTk;
                txtMatKhau.Text = t.mk;
                
            }
            
        }

        protected void btnSuaTk_Click(object sender, EventArgs e)
        {
            try
            {
                Restaurant003.App_Code.TaiKhoan t = new Restaurant003.App_Code.TaiKhoan();
                t.maTk = int.Parse(txtMaTk.Text);
                t.tenTk = txtTentk.Text;
                t.mk = txtMatKhau.Text;
                data.SuaTaiKhoan(t);
            }
            catch (Exception ex)
            {

                message.Text = "Có lỗi xảy ra: " + ex.Message;
            }
        }
    }
}