using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class Cart : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }
        }
        public void HienThi()
        {
            List<CartItem> ds = (List<CartItem>)Session["cartItems"];
            gridCart.DataSource = ds;
            DataBind();
            tongTien.Text = "Tổng tiền: " + TinhTongTien(ds).ToString() + ".000 đồng";
        }
        public int TinhTongTien(List<CartItem> ds)
        {
            int tong = 0;
            for(var i = 0; i < ds.Count; i++)
            {
                tong += ds[i].subTotal;
            }
            return tong;
        }
    }
}