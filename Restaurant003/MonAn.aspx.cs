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
            if(!IsPostBack)
            {
                HienThi();
                txtTimDmMon.DataSource = data.LayDm();
                txtTimDmMon.DataTextField = "tenDm";
                txtTimDmMon.DataValueField = "maDm";
                DataBind();
            }
            if (ddlMaDm.SelectedValue == "Tên món")
            {
                txtTimTenMon.Visible = true;
                txtTimDmMon.Visible = false;
            }
            else
            {
                txtTimTenMon.Visible = false;
                txtTimDmMon.Visible = true;
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

        protected void gridMon_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.XoaMon(m);
                HienThi();
            }
        }
        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                Restaurant003.App_Code.MonAn mon = data.Lay1Mon(m);
                Session["mon"] = mon;
                Response.Redirect("SuaMon.aspx");
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            if (ddlMaDm.SelectedValue == "Danh mục")
            {
                
                int maDm = int.Parse(txtTimDmMon.SelectedValue);
                if(data.LayDsMonAnTheoDm(maDm).Count == 0)
                {
                    testdm.Text = "Không tìm thấy món ăn nào có danh mục này";
                    gridMon.Visible = false;
                }
                else
                {
                    gridMon.Visible = true;
                    gridMon.DataSource = data.LayDsMonAnTheoDm(maDm);
                    DataBind();
                }
                
            }
            if(ddlMaDm.SelectedValue == "Tên món")
            {
                string tenMon = txtTimTenMon.Text;
                if(data.LayDsMonAnTheoTen(tenMon).Count == 0)
                {
                    testdm.Text = "Không tìm thấy món ăn nào có tên này";
                    gridMon.Visible = false;
                }
                else
                {
                    gridMon.Visible = true;
                    gridMon.DataSource = data.LayDsMonAnTheoTen(tenMon);
                    DataBind();
                }
                
            }
        }
    }
}