<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="productlist.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="Server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
  
        <asp:SqlDataSource ID="productlistsource" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingcartConnectionString %>"
            SelectCommand="SELECT [item_code], [item_name], [description], [quantity], [price] FROM [products] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:SessionParameter Name="category" SessionField="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
         
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="item_code" DataSourceID="productlistsource" 
                 Style="z-index: 100;
            left: 15px; position: absolute; top: 11px; height: 270px; width: 572px; margin-bottom: 0px;" 
                 BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" CellSpacing="2" 
                 OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="item_code" HeaderText="Item Code" ReadOnly="True" SortExpression="item_code" />
                <asp:BoundField DataField="item_name" HeaderText="Item Name" SortExpression="item_name" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:HyperLinkField DataNavigateUrlFields="item_code" DataNavigateUrlFormatString="Details.aspx?item_code={0}"
                    NavigateUrl="~/Details.aspx" Text="Details" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
         
    </body>
</html>
</asp:Content>

