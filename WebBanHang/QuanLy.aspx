<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuanLy.aspx.cs" Inherits="WebBanHang.QuanLy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <style>
        .images{
            width:50%;
            height:max-content
        }
                @keyframes move {
    0% { transform: translateX(0); }
    50% { transform: translateX(20px); }
    100% { transform: translateX(0); }
}

 .h22{
    display: inline-block;
    animation: move 2s infinite;
    filter:drop-shadow(20px 10px 20px green)
    }
 .HeaderText{
     background:#ebe4e4
 }
    </style>
    <div class="container" style="padding-top: 15%;text-align:center;width:100%;height:auto">
          <h2 class="h22">Quản Lý Sản Phẩm</h2>

        <br />
        <div class="container">
            <div class="col-md-6">
                <div class="form-inline">
                    <asp:TextBox ID="txtTen"  placeholder="Search" runat="server" list="items" CssClass="form-control"></asp:TextBox>
                    

                    <asp:Button ID="btTimK"  runat="server" Text="Tìm kiếm" CssClass="btn btn-outline-warning" />

                </div>
            </div>

            <div class="row-md-6 text-right">
                <a href="ThemsanPham.aspx" class="btn btn-success">Thêm sản phẩm</a>
            </div>
        </div>
        <div class="div">
        <asp:GridView ID="gvsanPham" runat="server" CssClass="table table-bordered mt-2" AutoGenerateColumns="False"
            DataKeyNames="id" DataSourceID="dssanPham" AllowPaging="true" PageSize="5">

            <columns>
               
                <asp:BoundField DataField="TieuDe" HeaderText="Tên sản phẩm" ReadOnly="true" SortExpression="TieuDe" />
                                

                <asp:ImageField DataImageUrlField="Hinh" DataImageUrlFormatString="images/{0}" ReadOnly="true" HeaderText="Ảnh" SortExpression="Hinh"
                     ControlStyle-Width="160px">
</asp:ImageField>
                <asp:BoundField DataField="donGia" DataFormatString="{0: #,##0}đ"  HeaderText="Đơn giá" SortExpression="donGia" />
                  <asp:BoundField DataField="NoiDung" HeaderText="Mô tả" ReadOnly="true" SortExpression="NoiDung" />  
              
                <asp:TemplateField ItemStyle-Wrap="false">
                   
                    <itemtemplate>
                        <asp:Button ID="btSua" runat="server" CssClass="btn btn-outline-success" CommandName="Edit" Text="Sửa" />
                        <asp:Button ID="btXoa" OnClientClick="return confirm('Bạn muốn xóa sản phẩm này?')" runat="server" CssClass="btn btn-outline-danger" CommandName="Delete" Text="Xoá" />
                    </itemtemplate>
                    <edititemtemplate>
                        <asp:Button ID="btCapnhat" runat="server" CssClass="btn btn-outline-success" CommandName="Update" Text="Lưu" />
                        <asp:Button ID="btKhong" runat="server" CssClass="btn btn-outline-warning" CommandName="Cancel" Text="Không" />
                    </edititemtemplate>
                </asp:TemplateField>

            </columns>
            <emptydatatemplate>
                <div class="alert alert-info">
                    Không có dữ liệu
                </div>
            </emptydatatemplate>
        </asp:GridView>

            </div>
        <asp:SqlDataSource ID="dssanPham" runat="server" ConnectionString="<%$ ConnectionStrings:QLQuanAoConnectionString %>"
            DeleteCommand="DELETE FROM [sanPham] WHERE [id] = @id"
            InsertCommand="INSERT INTO [sanPham] ( [TieuDe], [donGia] ,[Hinh],[NoiDung],[idloaiSanPham] ) VALUES (@TieuDe,  @donGia, @Hinh,@NoiDung,@idloaiSanPham)"
            SelectCommand="SELECT * FROM [sanPham] WHERE ([TieuDe] LIKE '%' + @TieuDe + '%')"
            UpdateCommand="UPDATE [sanPham] SET donGia= @donGia + @TieuDe WHERE [id] = @id">
            <deleteparameters>
                <asp:Parameter Name="id" Type="Int32" />
            </deleteparameters>
            <insertparameters>
                <asp:Parameter Name="TieuDe" Type="String" />
                <asp:Parameter Name="donGia" Type="Int32" />    
                <asp:Parameter Name="Hinh" Type="String" />
                 <asp:Parameter Name="NoiDung" Type="String" />
                <asp:Parameter Name="idloaiSanPham" Type="Int32" />
                
             

            </insertparameters>
            <selectparameters>
                <asp:ControlParameter ControlID="txtTen" DefaultValue="a" Name="TieuDe" PropertyName="Text" Type="String" />
            </selectparameters>
            <updateparameters>
              
               <asp:Parameter Name="TieuDe" Type="String" />
 <asp:Parameter Name="donGia" Type="Int32" />
 
 <asp:Parameter Name="Hinh" Type="String" />
                <asp:Parameter Name="NoiDung" Type="String" />
  <asp:Parameter Name="idloaiSanPham" Type="Int32" />
                  <asp:Parameter Name="id" Type="Int32" />
            </updateparameters>
        </asp:SqlDataSource>
    </div>

        </div>

</asp:Content>
