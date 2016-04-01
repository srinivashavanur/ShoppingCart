<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="Server">
    <%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 84px; position: absolute;
            top: 2px" Text="Order Form"></asp:Label>
        <asp:Label ID="Label10" runat="server" Style="z-index: 101; left: 212px; position: absolute;
            top: 3px" Text="Order No"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 293px; position: absolute;
            top: 3px" Text="Label2"></asp:Label>
        <asp:Label ID="Label3" runat="server" Style="z-index: 103; left: 23px; position: absolute;
            top: 60px" Text="Customer Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 104; left: 197px; position: absolute;
            top: 57px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="z-index: 105; left: 23px; position: absolute;
            top: 101px" Text="Delivery Address"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 106; left: 197px; position: absolute;
            top: 99px" Width="300px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Style="z-index: 107; left: 23px; position: absolute;
            top: 142px" Text="City"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 108; left: 197px; position: absolute;
            top: 133px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Style="z-index: 109; left: 23px; position: absolute;
            top: 184px" Text="State"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 110; left: 197px; position: absolute;
            top: 178px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Style="z-index: 111; left: 23px; position: absolute;
            top: 218px" Text="Pin Code"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 112; left: 197px; position: absolute;
            top: 214px"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Style="z-index: 113; left: 23px; position: absolute;
            top: 252px" Text="Contact No"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 114; left: 197px; position: absolute;
            top: 252px"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Style="z-index: 115; left: 23px; position: absolute;
            top: 333px" Text="Payment Mode"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server" Style="z-index: 116; left: 198px;
            position: absolute; top: 332px" Text="Master Card" GroupName="card" />
        <asp:RadioButton ID="RadioButton2" runat="server" Style="z-index: 117; left: 327px;
            position: absolute; top: 332px" Text="Visa" GroupName="card" />
        <asp:Label ID="Label11" runat="server" Style="z-index: 118; left: 23px; position: absolute;
            top: 296px" Text="Email Id"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 119; left: 197px; position: absolute;
            top: 291px"></asp:TextBox>
        <asp:RadioButton ID="RadioButton3" runat="server" Style="z-index: 120; left: 402px;
            position: absolute; top: 332px; width: 135px;" Text="ANZ Grindlays" 
            GroupName="card" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 121;
            left: 117px; position: absolute; top: 449px" Text="Place Order" />
        <asp:Button ID="Button2" runat="server" Style="z-index: 122; left: 280px; position: absolute;
            top: 450px" Text="Cancel" OnClick="Button2_Click" />
        &nbsp;
    
   
</body>
</html>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label12" runat="server" Style="z-index: 123; left: 0px; position: absolute; top: 383px" Text="Your total bill is: $"></asp:Label>
    <asp:Label ID="Label13" runat="server" Style="z-index: 123; left: 155px; position: absolute; top: 383px" Visible="false"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>