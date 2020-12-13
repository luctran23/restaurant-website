using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{

    public partial class HoaDon : System.Web.UI.Page
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
            gridHoaDon.DataSource = data.LayDsHoaDon();
            DataBind();
        }
        protected void gridHoaDon_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridHoaDon.PageIndex = e.NewPageIndex;
            HienThi();
        }
        protected void ChiTiet_Click(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "chiTiet")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                Session["mahd"] = m;
                Response.Redirect("CtHoaDon.aspx");
            }
        }

        protected void gridHoaDon_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}