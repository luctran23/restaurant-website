using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restaurant003.App_Code
{
    public class Ban
    {
        public int maBan { get; set; }
        public string tenBan { get; set; }
        public string tinhTrang { get; set; }

        public Ban()
        {

        }
        public Ban(string tenBan, string tinhTrang)
        {
            this.tenBan = tenBan;
            this.tinhTrang = tinhTrang;
        }
    }
}