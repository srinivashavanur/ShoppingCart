<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProfileInfo.aspx.cs" Inherits="ProfileInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="Server">
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileInfo.aspx.cs" Inherits="ProfileInfo" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
   
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 113px; position: absolute;
            top: 8px" Text="Please fill your Profile Information"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 101; left: 27px; position: absolute;
            top: 63px" Text="Customer Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 102; left: 198px; position: absolute;
            top: 62px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="z-index: 103; left: 27px; position: absolute;
            top: 94px" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 104; left: 198px; position: absolute;
            top: 92px" Width="300px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Style="z-index: 105; left: 27px; position: absolute;
            top: 128px" Text="City"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 106; left: 198px; position: absolute;
            top: 130px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Style="z-index: 107; left: 27px; position: absolute;
            top: 167px" Text="State"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 108; left: 198px; position: absolute;
            top: 169px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Style="z-index: 109; left: 27px; position: absolute;
            top: 209px" Text="Pin Code"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 110; left: 198px; position: absolute;
            top: 203px"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Style="z-index: 111; left: 27px; position: absolute;
            top: 243px" Text="Contact No"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 112; left: 198px; position: absolute;
            top: 244px"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" Style="z-index: 113; left: 27px; position: absolute;
            top: 283px" Text="Email Id"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 114; left: 198px; position: absolute;
            top: 282px"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Style="z-index: 118; left: 255px; position: absolute;
            top: 348px" Text="Cancel" OnClick="Button3_Click"/>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Style="z-index: 117; left: 60px; position: absolute;
            top: 350px" Text="Enjoy Shopping" OnClick="Button1_Click" />
    
    
</body>
</html>
</asp:Content>