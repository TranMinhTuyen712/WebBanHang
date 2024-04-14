<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlDangNhap.aspx.cs" Inherits="WebBanHang.qlDangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="carousel-inner" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS';color:#126d82;padding-top:10%">
      <div class="carousel-item active">
          <img src="images/slider_1.jpg" class="d-block w-100"  alt="...">
          <div class="carousel-caption d-none d-md-block">

              

        
        <table   cellpadding="2" width="70%" height="auto" align="center">
        
            
            <tr style="color:#0a7387">
                <td style="padding-top:1%">
                    <table cellpadding="25" width="100%" align="text-center">
                        <tr bgcolor="">
                            <td style="text-align:center;padding-top:1%" colspan="2">
                                <asp:Label ID="lblHeader" runat="server"  class="form-input" ><h4>Đăng Nhập</h4</asp:Label></td>
                        </tr>
                          <tr>
     <td valign="middle" align="left" width="40%"> Số điện thoại </td>
     <td valign="middle" width="60%">
         <asp:TextBox ID="txtSDT" runat="server" Width="350px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvSDT" ControlToValidate="txtSDT" Text="*" runat="server" 

             ForeColor="#ff0000" ErrorMessage="sđt không được bỏ trống"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="rvSDT" ControlToValidate="txtSDT" Text="*" runat="server"
       Display="Dynamic" CssClass="text-danger" ValidationExpression="[\w|\d|&|_|!]{8}[\w|\d|&|_|!]+"
                     ErrorMessage=" sđt không hợp lệ" />
    
     </td>
 </tr>
                           
             
                       
                         <tr>
     <td valign="middle" align="left" width="40%">Mật Khẩu</td>
     <td valign="middle" width="60%">
         <asp:TextBox ID="txtMatKhau" Width="350px" runat="server"  TextMode="Password"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvMatKhau" ControlToValidate="txtMatKhau" Text="*" runat="server" 
             ForeColor="#ff0000" Display="Dynamic" ErrorMessage="Mật khẩu không được bỏ trống"></asp:RequiredFieldValidator>
     </td>
    
 </tr>
                    </table>
                       <div class="row mb-2">
        <div class="col-md-12 text-center">
            <asp:Button ID="btDangNhap" CssClass="btn btn-outline-danger" runat="server" Text="Đăng Nhập" On Click="btDangNhap_Click"/>
        </div>
    </div>
<div class="col-md-6">
    <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
    <asp:ValidationSummary ID="vsTongHopLoi" HeaderText=" Lỗi: "
        ShowSumary="true" ShowMessageBox="true"
        CssClass="text-danger" runat="server" />
</div>
                </td>

            </tr>

        </table>
               
                  </div>
</div>
              </div>
                  <asp:SqlDataSource ID="dsusers" runat="server"
    ConnectionString="<%$ ConnectionStrings:QLQuanAoConnectionString %>" 
    SelectCommand="SELECT * FROM [loaiSanPham]">

</asp:SqlDataSource>
          
</asp:Content>
