using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class CtHoaDon
    {
        public int maHd { get; set; }
        public string tenKh { get; set; }
        public string diaChi { get; set; }
        public string soDienThoai { get; set; }
        public string email { get; set; }
        public CtHoaDon()
        {

        }
        public CtHoaDon(string tenKh, string diaChi, string soDienThoai, string email)
        {
            this.tenKh = tenKh;
            this.diaChi = diaChi;
            this.soDienThoai = soDienThoai;
            this.email = email;
        }
    }

}