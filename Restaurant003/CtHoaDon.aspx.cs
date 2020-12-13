using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class CtHoaDon : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int m = (int)Session["mahd"];
                Restaurant003.App_Code.CtHoaDon c = new Restaurant003.App_Code.CtHoaDon();
                c = data.Lay1KhBangMaHd(m);
                txtCtMaHd.Text = c.maHd.ToString();
                txtCtTenKh.Text = c.tenKh;
                txtCtDiaChi.Text = c.diaChi;
                txtCtSoDienThoai.Text = c.soDienThoai;
                txtCtEmail.Text = c.email;
                HienThi();
            }
        }
        public void HienThi()
        {
            int m = (int)Session["mahd"];
            gridCtMon.DataSource = data.LayDsMonTheoMaHd(m);
            DataBind();
            txtTotal.Text = "Tổng tiền: " + data.LayTongTien(m).ToString();
        }
        protected void gridCtMon_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridCtMon.PageIndex = e.NewPageIndex;
            HienThi();
        }
        
    }
}