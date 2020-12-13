using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class SuaMon : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Restaurant003.App_Code.MonAn mon = (Restaurant003.App_Code.MonAn)Session["mon"];
                lbMaMon.Text = mon.maMon.ToString();
                lbTenMon.Text = mon.tenMon;
                lbSoLuong.Text = mon.soLuong.ToString();
                lbDonGia.Text = mon.donGia.ToString();
                lbDonGiaKm.Text = mon.giaKm.ToString();
                ddlMaDm.DataSource = data.LayDm();
                ddlMaDm.DataTextField = "tenDm";
                ddlMaDm.DataValueField = "maDm";
                DataBind();
                ddlMaDm.SelectedValue = mon.maDm.ToString();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                Restaurant003.App_Code.MonAn mon = new Restaurant003.App_Code.MonAn();
                mon.maMon = int.Parse(lbMaMon.Text);
                mon.tenMon = lbTenMon.Text;
                mon.soLuong = int.Parse(lbSoLuong.Text);
                mon.donGia = int.Parse(lbDonGia.Text);
                mon.anh = lbAnh.FileName.ToString();
                mon.giaKm = int.Parse(lbDonGiaKm.Text);
                mon.maDm = int.Parse(ddlMaDm.SelectedValue);
                data.SuaMon(mon);
            }
            catch (Exception ex)
            {
                lbsua.Text = "Có lỗi xảy ra: " + ex.Message;
            }
        }
    }
}