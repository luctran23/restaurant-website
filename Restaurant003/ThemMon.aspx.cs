using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Restaurant003
{
    public partial class ThemMon : System.Web.UI.Page
    {
        Restaurant003.App_Code.DataUtil data = new Restaurant003.App_Code.DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlMaDm.DataSource = data.LayDm();
                ddlMaDm.DataTextField = "tenDm";
                ddlMaDm.DataValueField = "maDm";
                DataBind();
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                Restaurant003.App_Code.MonAn m = new Restaurant003.App_Code.MonAn();
                m.tenMon = lbTenMon.Text;
                m.soLuong = int.Parse(lbSoLuong.Text);
                m.donGia = int.Parse(lbDonGia.Text);
                m.anh = lbAnh.FileName.ToString();
                m.giaKm = int.Parse(lbDonGiaKm.Text);
                m.maDm = int.Parse(ddlMaDm.SelectedValue);
                data.ThemMon(m);
            }
            catch (Exception ex)
            {
                message.Text = "Co loi xay ra: " + ex.Message;
            }
            
        }
    }
}