<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlDanhMucSP.aspx.cs" Inherits="WebBanHang.qlDanhMucSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div style="padding-top:10%;">
      
           
    
    <div class="row">
 <div class="col-md-3">
  
     <ul class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown" style="color:brown;font-size:25px" >Chủ đề </a>
          <div class="dropdown-menu">
         <asp:Repeater ID="rptTen" runat="server" DataSourceID="dsTen" >
             <ItemTemplate>
                
                 <a href="qlDanhMucSP.aspx?id=<%# Eval("id") %>"class="dropdown-item" ><%#  Eval("Ten")  %> </a>
            
             </ItemTemplate>
         </asp:Repeater>  
              </div>
     </ul>

 </div>
     </div>
       <br />
   <div class="row">
    <div class="row-md-10" style="padding-left: 5%; margin: 0 auto;width:70%; height:auto;text-align:center ">
          <asp:ListView ID="lvsanPham" runat="server" DataSourceID="dssanPham">
              <ItemTemplate>

                  <div class="col text-center">
                     
                      <a href="ChiTiet.aspx" class="images-text">
                              <div>
        <img  style="width: 100%; height:180px;object-fit:cover; display: block;" alt="" src="images/<%# Eval("Hinh") %>" />
    </div>
</a>
<br />
<div style="text-align:center;width:100%;height:40px ">
    <%#  Eval("TieuDe") %>
</div>

<hr />
<p>
    <span class="sale-price">  <%# Eval("donGia","{0:#,##0}đ   ")   %>
                  
    </span>
</p>
<br />
                   
                      <asp:Button ID="btAddToCard" runat="server" class="btn btn-outline-danger card-body" style="width:85%;text-align:center; " Text="Thêm vào giỏ hàng"
                          CommandArgument='<%# Eval("id") %>' OnClick="btAddToCard_Click" />
                  </div>
                    
              </ItemTemplate>

              <LayoutTemplate>
                  <div class="row">
                      <div id="itemPlaceHolder" runat="server">
                      </div>
                  </div>
                  <div class="row">
                      <div class="col text-center">
                          <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                              <Fields>
                                  <asp:NumericPagerField />
                              </Fields>
                          </asp:DataPager>
                      </div>
                  </div>
              </LayoutTemplate>
          </asp:ListView>
      </div>
  </div>
    </div>
      
    <asp:SqlDataSource ID="dssanPham" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLQuanAoConnectionString %>"
        SelectCommand="SELECT * FROM [sanPham] WHERE ([idLoaiSanPham] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
     
</asp:Content>
