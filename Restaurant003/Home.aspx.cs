using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class Home1 : System.Web.UI.Page
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
            DataList1.DataSource = data.LayDsMonAn();
            DataBind();
        }
        protected void ChoVaoGio_Click(object sender, CommandEventArgs e)
        { 
           if(e.CommandName == "choVaoGio")
            {
                List<CartItem> dsMon = (List<CartItem>)Session["cartItems"];
                if (dsMon == null)
                {
                    dsMon = new List<CartItem>();
                }
                int m = Convert.ToInt16(e.CommandArgument);
                Restaurant003.App_Code.MonAn mon = data.Lay1Mon(m);
                CartItem item = new CartItem();
                item.itemName = mon.tenMon;
                item.quantity = 1;
                item.price = mon.donGia;
                item.subTotal = item.quantity * item.price;
                if(dsMon.Contains(item))
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
    }
}