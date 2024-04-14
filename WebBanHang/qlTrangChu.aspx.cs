using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using WebBanHang.Models;

namespace WebBanHang
{
    public partial class qlTrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btAddToCard_Click(object sender, EventArgs e)
        {
            int masp = int.Parse(((Button)sender).CommandArgument);
            Cart cart = (Cart) Session["CART"]; 
            if (cart == null) 
            {
                cart = new Cart();
                                   
                Session["CART"] = cart;
            }
            cart.Add(masp);
            Response.Write("<script> alert('Đã thêm vào giỏ hàng') </script>");
        }
    }
}