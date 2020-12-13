using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class SuaBan : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Restaurant003.App_Code.Ban b = (Restaurant003.App_Code.Ban)Session["ban"];
                txtMaBan.Text = b.maBan.ToString();
                txtTenBan.Text = b.tenBan;
                txtTinhTrang.Text = b.tinhTrang;
            }
        }

        protected void btnSuaBan_Click(object sender, EventArgs e)
        {
            try
            {
                Restaurant003.App_Code.Ban b = new Restaurant003.App_Code.Ban();
                b.maBan = int.Parse(txtMaBan.Text);
                b.tenBan = txtTenBan.Text;
                b.tinhTrang = txtTinhTrang.Text;
                data.SuaBan(b);
            }
            catch (Exception ex)
            {
                message.Text = "Có lỗi xảy ra: " + ex.Message;
            }
        }
    }
}