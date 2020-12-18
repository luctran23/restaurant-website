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
            List<CartItem> ds = (List<CartItem>)Session["cartItems"];
            if (!IsPostBack)
            {
                if(Session["cartItems"] == null || ds.Count == 0)
                {
                    txtEmptyCart.Text = "Bạn không có sản phẩm nào trong giỏ hàng";
                    thanhToan.Visible = false;
                }
                else
                {
                    HienThi();
                }
                
            }
            if (Session["email"] != null)
            {
                username.Text = Session["email"].ToString().Substring(0, 8);
                btndn.Visible = false;
                btndk.Visible = false;

            }
            else
            {
                username.Text = "Tài khoản";
                btndx.Visible = false;
            }
        }
        public void HienThi()
        {
            if (Session["cartItems"] == null)
            {
                txtEmptyCart.Text = "Bạn không có sản phẩm nào trong giỏ hàng";
            }
            else
            {
                List<CartItem> ds = (List<CartItem>)Session["cartItems"];
            gridCart.DataSource = ds;
            DataBind();
            tongTien.Text = "Tổng tiền: " + TinhTongTien(ds).ToString() + ".000 đồng";
            }
            
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
        protected void logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }
        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            List<CartItem> ds = (List<CartItem>)Session["cartItems"];
            if (e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.XoaGioHang(ds, m);
                HienThi();
                tongTien.Visible = false;
                if(ds.Count == 0)
                {
                    txtEmptyCart.Text = "Bạn không có sản phẩm nào trong giỏ hàng";
                }
                Session["cartItems"] = ds;
            }
        }
    }
}