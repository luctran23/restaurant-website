using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Restaurant003.App_Code;

namespace Restaurant003
{
    public partial class ThemBan : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThemBan_Click(object sender, EventArgs e)
        {
            Restaurant003.App_Code.Ban b = new Restaurant003.App_Code.Ban();
            b.tenBan = txtTenBan.Text;
            b.tinhTrang = txtTinhTrang.Text;
            data.ThemBan(b);
        }
    }
}