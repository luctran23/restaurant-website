using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class KhachHang
    {
        public int maKh { get; set; }
        public string tenKh { get; set; }
        public string diaChi { get; set; }
        public string soDienThoai { get; set; }
        public string email { get; set; }
        public string matKhau { get; set; }
        public KhachHang()
        {

        }

        public KhachHang(string tenKh, string diaChi, string soDienThoai, string email, string matKhau)
        {
            this.tenKh = tenKh;
            this.diaChi = diaChi;
            this.soDienThoai = soDienThoai;
            this.email = email;
            this.matKhau = matKhau;
        }
    }
}