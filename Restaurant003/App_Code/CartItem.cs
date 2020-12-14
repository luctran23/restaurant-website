using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class CartItem
    {
       
        public string itemName { get; set; }
        public int quantity { get; set; }
        public int price { get; set; }
        public int subTotal { get; set; }
        public CartItem()
        {

        }
        public CartItem(string itemName, int quantity, int price, int subTotal)
        {
            this.itemName = itemName;
            this.quantity = quantity;
            this.price = price;
            this.subTotal = subTotal;
        }
        public override bool Equals(object obj)
        {
            CartItem ci = (CartItem)obj;
            return (ci.itemName == this.itemName);
        }
    }
}