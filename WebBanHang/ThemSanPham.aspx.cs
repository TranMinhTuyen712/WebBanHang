using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanHang
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btThem_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["QLQuanAoConnectionString"].ConnectionString);
            conn.Open();

            string sql = "INSERT INTO sanPham (TieuDe,dongia,Hinh) values(@TieuDe,@dongia,@Hinh)";
            SqlCommand cmd = new SqlCommand(sql, conn);


            cmd.Parameters.AddWithValue("@TieuDe", txtTen.Text);

            cmd.Parameters.AddWithValue("@donGia", txtDongia.Text);
            if (Fhinh.HasFile)
            {
                string path = Server.MapPath("~/images/") + Fhinh.FileName;
                Fhinh.SaveAs(path);
                cmd.Parameters.AddWithValue("@Hinh", Fhinh.FileName);
                cmd.Parameters.AddWithValue("@NoiDung", txtND.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@Hinh", "no_image.png");
            }
            if (cmd.ExecuteNonQuery() > 0) 
            {
                Response.Write("<script> alert('Đã thêm thành công') </script>");
            }
            else
            {
                Response.Write("<script> alert('Thao tác thêm không thành công') </script>");
            }
        }
    }
}
