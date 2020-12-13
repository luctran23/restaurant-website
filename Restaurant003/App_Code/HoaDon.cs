using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class HoaDon
    {
        public int maHd { get; set; }
        public DateTime ngayLap { get; set; }
        public int maKh { get; set; }
        public HoaDon()
        {

        }

        public HoaDon(DateTime ngayLap, int maKh)
        {
            this.ngayLap = ngayLap;
            this.maKh = maKh;
        }
    }
}