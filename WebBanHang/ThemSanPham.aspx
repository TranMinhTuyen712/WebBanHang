<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ThemSanPham.aspx.cs" Inherits="WebBanHang.ThemSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
          <div class="carousel-item active">
      <img src="images/slider_5.jpg" class="d-block w-100"   alt="...">
      <div class="carousel-caption  d-md-block">
           <table   cellpadding="4" width="70%" height="auto" align="center">
        <h2 style="text-align:center;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;color:#0a7387">THÊM SẢN PHẨM</h2>
    <hr />
        <div class="container" style="width:50%;text-align:left  ">
    <div class="col-md-8">
        
    <asp:TextBox ID="txtTen" placeholder="Tên sản phẩm" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvTen" runat="server" ControlToValidate="txtTen" Text="(*)" ForeColor="Red" 
        ErrorMessage="Tên sản phẩm không được bỏ trống"></asp:RequiredFieldValidator>
    </div>
    <div class="col-md-8">
        
        <asp:TextBox ID="txtDongia"  placeholder="Giá bán" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvdonGia" runat="server" ControlToValidate="txtdonGia" Text="(*)" ForeColor="Red"
            ErrorMessage="Tên sản phẩm không được bỏ trống"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvdonGia" runat="server" ControlToValidate="txtdonGia" Operator="GreaterThanEqual"
            ValueToCompare="0" Type="Double" Text="(*)" CssClass="text-danger"
            ErrorMessage="Đơn giá không hợp lệ (phải >=0)"></asp:CompareValidator>
    </div>
            <br />
    <div class="col-md-10">
        <label  style="color:#0a7387">Ảnh bìa</label>
        <asp:FileUpload  ID="Fhinh" runat="server" />
    </div>
            <br />
            <div class="col-md-10">
        <asp:TextBox ID="txtND" placeholder="Mô tả" runat="server" CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvND" runat="server" ControlToValidate="txtND" Text="(*)" ForeColor="Red"
    ErrorMessage="Mô tả không được bỏ trống"></asp:RequiredFieldValidator>
                 </div>
    <div class="col-md-4">
      
        <br />
        <label style="color:#0a7387">Chủ đề</label>
        <asp:DropDownList ID="ddlTen" runat="server" CssClass="form-control"
           DataSourceID="dsTen" DataTextField="Ten" DataValueField="id" ></asp:DropDownList>
    </div  >
           <br />
            
    <hr />
    
<asp:Button ID="btThem" CssClass="btn btn-outline-success" runat="server" Text="Thêm" OnClick="btThem_Click"/>
            </div>
       </table>
</div>
      
      </div>
</div>
<asp:SqlDataSource ID="dsloaiSanPham" runat="server"
    ConnectionString="<%$ ConnectionStrings:QLQuanAoConnectionString %>" 
    SelectCommand="SELECT * FROM [loaiSanPham]">

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsid" runat="server"
    ConnectionString="<%$ ConnectionStrings:QLQuanAoConnectionString %>" 
    SelectCommand="SELECT * FROM [loaiSanPham]">

</asp:SqlDataSource>
       
</asp:Content>
