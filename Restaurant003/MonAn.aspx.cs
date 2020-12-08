using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class MonAn : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                HienThi();
            }
            
        }
        public void HienThi()
        {
            gridMon.DataSource = data.LayDsMonAn();
            DataBind();
        }

        protected void gridMon_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridMon.PageIndex = e.NewPageIndex;
            HienThi();
        }
    }
}