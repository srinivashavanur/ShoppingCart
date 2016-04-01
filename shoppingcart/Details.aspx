<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="Server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    
        
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            
            Style="z-index: 103; left: 24px; position: absolute; top: 212px; width: 506px; height: 146px;" 
            DataSourceID="productlistsource" CellPadding="4" ForeColor="#333333" 
            GridLines="None" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="item_code" HeaderText="item_code" SortExpression="item_code" />
                <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        &nbsp; &nbsp;
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="imagesource" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingcartConnectionString %>"
            SelectCommand="SELECT [image] FROM [products] WHERE ([item_code] = @item_code)">
            <SelectParameters>
                <asp:QueryStringParameter Name="item_code" QueryStringField="item_code" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" Style="z-index: 105; left: 54px; position: absolute;
            top: 15px; height: 163px; width: 148px;" AutoGenerateColumns="False" EnableModelValidation="True">
            <Columns>
                <asp:ImageField DataImageUrlField="image">
                      
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;
        &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton6" runat="server" Style="z-index: 106; left: 595px;
            position: absolute; top: 93px" Height="66px" 
            ImageUrl="~/images/addcart.jpg" Width="71px" OnClick="ImageButton6_Click" />
        <asp:ImageButton ID="ImageButton7" runat="server" Style="z-index: 107; left: 594px;
            position: absolute; top: 190px" Height="65px" 
            ImageUrl="~/images/showcart.jpg" Width="74px" OnClick="ImageButton7_Click" />
        <asp:SqlDataSource ID="productlistsource" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingcartConnectionString %>"
            SelectCommand="SELECT [item_code], [item_name], [description], [price] FROM [products] WHERE ([item_code] = @item_code)">
            <SelectParameters>
                <asp:QueryStringParameter Name="item_code" QueryStringField="item_code" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
    
    
</body>
</html>
</asp:Content>