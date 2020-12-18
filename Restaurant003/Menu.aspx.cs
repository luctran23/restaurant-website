using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;
using Restaurant003.App_Code;


namespace Restaurant003
{
    public partial class Menu : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThi();
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
            DataList1.DataSource = data.LayDsMonAn();
            DataBind();
        }
        protected void ChoVaoGio_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "choVaoGio")
            {
                List<CartItem> dsMon = (List<CartItem>)Session["cartItems"];
                if (dsMon == null)
                {
                    dsMon = new List<CartItem>();
                }
                int m = Convert.ToInt16(e.CommandArgument);
                Restaurant003.App_Code.MonAn mon = data.Lay1Mon(m);
                CartItem item = new CartItem();
                item.itemId = mon.maMon;
                item.itemName = mon.tenMon;
                item.quantity = 1;
                item.price = mon.donGia;
                item.subTotal = item.quantity * item.price;
                if (dsMon.Contains(item))
                {
                    int i = dsMon.IndexOf(item);
                    dsMon[i].quantity++;
                    dsMon[i].subTotal = dsMon[i].quantity * dsMon[i].price;
                }
                else
                {
                    dsMon.Add(item);
                }

                Session["cartItems"] = dsMon;
                Session["itemsQuantity"] = dsMon.Count;
            }
        }
        protected void logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string ten = txtTimKiem.Text;
            if (data.LayDsMonAnTheoTen(ten).Count != 0)
            {
                DataList1.DataSource = data.LayDsMonAnTheoTen(ten);
                DataBind();
            }
            else
            {
                DataList1.Visible = false;
                message.Text = "Không có món ăn nào có tên: " + txtTimKiem.Text;
            }
            
        }
    }
}