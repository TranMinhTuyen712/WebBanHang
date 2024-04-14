using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanHang
{
    public partial class qlDangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btDangKy_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += $"<li> SĐT : {txtSDT.Text} </li>";
            kq += $"<li> Tên đăng nhập: {txtTenDN.Text} </li>";
            kq += $"<li> Mật khẩu: {txtMatKhau.Text} </li>";
            kq += "</ul>";

            
            kq += $"<li> Đăng Ký Thành Công {lbKetQua.Text}</li> ";
            lbKetQua.Text = kq;
          


        }
      
    }
}
