using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnThanhToan_Click1(object sender, EventArgs e)
        {
            // them vao bang KhachHang
            Restaurant003.App_Code.KhachHang k = new Restaurant003.App_Code.KhachHang();
            k.tenKh = txtTen.Text;
            k.diaChi = txtDiaChi.Text;
            k.soDienThoai = txtSoDt.Text;
            k.email = txtEmail.Text;
            k.matKhau = "null";
            data.ThemKhachHang(k);
            // them vao bang HoaDon
            Restaurant003.App_Code.HoaDon hd = new Restaurant003.App_Code.HoaDon();
            hd.ngayLap = DateTime.Now;
            hd.maKh = data.LayMaKh();
            data.ThemHoaDon(hd);
            // them vao bang CtHoaDon
            List<CartItem> ds = (List<CartItem>)Session["cartItems"];
            for (var i = 0; i < ds.Count; i++)
            {
                data.ThemCtHoaDon(data.LayMaHd(), ds[i].itemId, ds[i].quantity, ds[i].price);
            }
            Session.Remove("cartItems");
        }
    }
}