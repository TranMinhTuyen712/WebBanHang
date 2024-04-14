<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="WebBanHang.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main style="padding-top:15%;text-align:center">
    <h2 >
        Giỏ hàng</h2>
        <br />
        <asp:GridView ID="gvGioHang" runat="server" CssClass="table table-bordered" AutoGenerateColumns="false"
            DataKeyNames="masp" OnRowDeleting="gvGioHang_RowDeleting" OnRowUpdating="gvGioHang_RowUpdating">
        <Columns>
            <asp:ImageField ItemStyle-HorizontalAlign="Center" DataImageUrlField="hinh"
                DataImageUrlFormatString="images/{0}"
                HeaderText="Ảnh sản phẩm" ControlStyle-Width="150px">
            </asp:ImageField>
            <asp:BoundField HeaderText="Tên sản phẩm" DataField="tensp" />
                     
            
            <asp:BoundField HeaderText="Đơn giá" DataField="DonGia"

                DataFormatString="{0:#,##0}đ" />
         
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                 <!--   <img src="images/<%# Eval("Hinh") %>" width="120px"/> <br /> 
                   
                    giá bán: <%# Eval("donGia") %> <br />  -->
                    <asp:TextBox ID="txtSoLuong" TextMode="Number" runat="server" Class="text-center;" width="100px" Text='<%# Eval("soluong") %>'>

                    </asp:TextBox>
                    <asp:LinkButton ID="btUpdate" runat="server" CommandName="Update" CssClass="btn btn-outline-success">
                        <i class="bi bi-pencil-square"></i>Update
                    </asp:LinkButton>
                    <asp:LinkButton ID="btDelete" runat="server" CommandName="Delete" CssClass="btn btn-outline-danger">
    <i class="bi bi-trash"></i>Delete
</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
              <asp:BoundField  HeaderText="Thành tiền" DataField="Thanhtien"
                  
      DataFormatString="{0:#,##0}đ" />
 
        </Columns>

        <EmptyDataTemplate>
            <div class="alert alert-info">
                Chưa có sản phẩm trong giỏ
            </div>
        </EmptyDataTemplate>
    </asp:GridView>
    <div class="row">
        <div class="col-md-6">
            <a href="qlDanhMucSP.aspx" class="btn btn-outline-danger">Tiếp tục mua hàng</a>
        </div>
        <div class="col-md-6 text-right">
            <asp:Label ID="lbTongTien" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row" style="padding-bottom: 10px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btDatHang" runat="server" Text="Đặt hàng" CssClass="btn btn-outline-success" />
        </div>
    </div>
        </main>
   
</asp:Content>
