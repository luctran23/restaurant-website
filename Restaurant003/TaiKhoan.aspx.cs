using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class TaiKhoan : System.Web.UI.Page
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
            gridTaiKhoan.DataSource = data.LayDsTaiKhoan();
            DataBind();
        }
        protected void gridTaiKhoan_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridTaiKhoan.PageIndex = e.NewPageIndex;
            HienThi();
        }
        protected void Xoa1_Click(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.XoaTaiKhoan(m);
                HienThi();
            }
        }
        protected void Sua1_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                Restaurant003.App_Code.TaiKhoan t = data.Lay1TaiKhoan(m);
                Session["taikhoan"] = t;
                Response.Redirect("SuaTaiKhoan.aspx");
            }
        }
    }
}