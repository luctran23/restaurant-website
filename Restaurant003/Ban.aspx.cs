using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class Ban : System.Web.UI.Page
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
            gridBan.DataSource = data.LayDsBan();
            DataBind();
        }
        protected void gridBan_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridBan.PageIndex = e.NewPageIndex;
            HienThi();
        }
        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.XoaBan(m);
                HienThi();
            }
        }
        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                Session["ban"] = data.Lay1Ban(m);
                Response.Redirect("SuaBan.aspx");
            }
        }
    }
}