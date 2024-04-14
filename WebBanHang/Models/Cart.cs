using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebBanHang.Models
{
    public class Cart
    {
        private List<CartItem> _items;

        public Cart()
        {
            _items = new List<CartItem>();
        }

        public List<CartItem> Items { get { return _items; } }
        
        public void Add(int masp)
        {
           
            SqlConnection conn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["QLQuanAoConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from sanPham where id=@id", conn);
            cmd.Parameters.AddWithValue("@id", masp);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                
                CartItem sp = new CartItem
                {
                    MaSP= masp,
                    
                    TenSP = dr["TieuDe"].ToString(),
                    Hinh = dr["Hinh"].ToString(),
                   MoTa = dr["NoiDung"].ToString(),
                    DonGia = int.Parse(dr["donGia"].ToString()),

                    SoLuong = 1
                };
              
                _items.Add(sp);
            }
        }
       
        public void Update(int masp, int soluong)
        {
            int index = findId(masp);
           if  ( index != -1)
            {
                if(soluong > 0)
                    _items[index].SoLuong   = soluong;
                else
                    _items.RemoveAt(index); 
            }
        }

        private int findId(int masp )
        {
            for (int i = 0; i < _items.Count; i++)
            {
                if (_items[i].MaSP == masp)
                {
                    return i;
                }
            }
            return -1;
        }

        //Phương thức xoá sản phẩm khỏi giỏ,
        public void Delete(int masp)
        {
            int index = findId(masp);
            if (index != -1)
            {
                _items.RemoveAt(index);
            }
        }

      
        
        
        //Tính tổng thành tiền
        public int Total
        {
            get
            {
                int tong = 0;
                foreach (CartItem item in _items)
                {
                    tong += item.ThanhTien;
                }
                return tong;
            }
        }
        }
}