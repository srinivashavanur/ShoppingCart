<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="Server">
    <%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="1" CellSpacing="1"
            ForeColor="Black" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
            OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Style="z-index: 100;
            left: 22px; position: absolute; top: 51px; height: 159px; width: 616px;" EnableModelValidation="True">
            <FooterStyle BackColor="#CCCCCC" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField HeaderText="Changes" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="item_code" HeaderText="item_code" ReadOnly="True" />
                <asp:BoundField DataField="item_name" HeaderText="item_name" ReadOnly="True" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" />
                <asp:BoundField DataField="description" HeaderText="description" ReadOnly="True" />
                <asp:BoundField DataField="price" HeaderText="price" ReadOnly="True" />
            </Columns>
            <RowStyle BackColor="White" />
        </asp:GridView>
        <asp:Label ID="Label2" runat="server" Style="z-index: 106; left: 31px; position: absolute;
            top: 12px; height: 16px; width: 387px;" Text="Label"></asp:Label>
        &nbsp; &nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="z-index: 105;
            left: 223px; position: absolute; top: 288px" Text="Checkout" />
    
   
</body>
</html>
</asp:Content>