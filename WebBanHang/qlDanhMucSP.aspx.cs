using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanHang.Models;

namespace WebBanHang
{
    public partial class qlDanhMucSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btAddToCard_Click(object sender, EventArgs e)
        {
          
            int id = int.Parse(((Button)sender).CommandArgument);
           
            Cart cart = (Cart)Session["CART"]; 
            if (cart == null) 
            {
                cart = new Cart(); 
                                   
                Session["CART"] = cart;
            }
            cart.Add(id);
            Response.Write("<script> alert('Đã thêm sản phẩm vào giỏ') </script>");
        }
    }
    
}