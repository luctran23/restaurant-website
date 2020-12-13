using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class LienHe : System.Web.UI.Page
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
            gridLienHe.DataSource = data.LayDsLienHe();
            DataBind();
        }
        protected void gridLienHe_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridLienHe.PageIndex = e.NewPageIndex;
            HienThi();
        }
    }
}