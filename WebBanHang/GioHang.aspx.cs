using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBanHang.Models;

namespace WebBanHang
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LienKetDuLieuGridView();

            }
        }
        private void LienKetDuLieuGridView()
        {
            Cart cart = (Cart)Session["CART"];
            if (cart != null)
            {
               
                gvGioHang.DataSource = cart.Items;
                gvGioHang.DataBind();
                            
                lbTongTien.Text = string.Format("Tổng thành tiền: <b> {0: #,##0} Đ </b>",
                cart.Total);
            }
        }
        protected void gvGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            Cart cart = (Cart)Session["CART"];
            cart.Delete(masp);
            LienKetDuLieuGridView();
        }



        protected void gvGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            int soluong = int.Parse(((TextBox)gvGioHang.Rows[e.RowIndex].FindControl("txtSoLuong")).Text);
            Cart cart = (Cart)Session["CART"];
            cart.Update(masp, soluong);
            LienKetDuLieuGridView();
        }

        protected void btCapNhat_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}