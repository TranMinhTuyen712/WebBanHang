using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanHang
{
    public partial class qlDangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btDangNhap_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += $"<li> SĐT : {txtSDT.Text} </li>";
           
            kq += $"<li> Mật khẩu: {txtMatKhau.Text} </li>";
           
            kq += "</ul>";

            kq += $"Đăng Nhập Thành Công: {lbKetQua.Text} ";
            lbKetQua.Text = kq;


        }
    }
}
