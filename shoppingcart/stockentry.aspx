<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stockentry.aspx.cs" Inherits="stockentry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" BackColor="NavajoWhite" Font-Bold="True" Font-Size="XX-Large"
            ForeColor="#C0C000" Style="z-index: 100; left: 259px; position: absolute; top: 8px"
            Text="Stock Entry Form" Width="353px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 124px; position: absolute;
            top: 76px" Text="Item Code"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 102; left: 218px;
            position: absolute; top: 219px" />
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 203px; position: absolute;
            top: 69px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Style="z-index: 104; left: 446px; position: absolute;
            top: 68px" Text="Item Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 105; left: 552px; position: absolute;
            top: 68px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Style="z-index: 106; left: 105px; position: absolute;
            top: 114px" Text="Description"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 107; left: 204px; position: absolute;
            top: 115px" TextMode="MultiLine" Width="220px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Style="z-index: 108; left: 451px; position: absolute;
            top: 117px" Text="Category"></asp:Label>
        <asp:DropDownList ID="DropDownList1" Style="z-index: 108; left: 550px; position: absolute;
            top: 117px; right: 461px;" runat="server">
    <asp:ListItem Enabled="true" Text="Select a Category" Value="-1"></asp:ListItem>
    <asp:ListItem Text="camera" Value="camera"></asp:ListItem>
    <asp:ListItem Text="mobile" Value="mobile"></asp:ListItem>
    <asp:ListItem Text="book" Value="book"></asp:ListItem>
    </asp:DropDownList>

       <!-- <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 109; left: 554px; position: absolute;
            top: 116px"></asp:TextBox> -->
        <asp:Label ID="Label6" runat="server" Style="z-index: 110; left: 106px; position: absolute;
            top: 165px" Text="Quantity"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 111; left: 208px; position: absolute;
            top: 163px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Style="z-index: 112; left: 452px; position: absolute;
            top: 166px" Text="Price"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 113; left: 558px; position: absolute;
            top: 170px"></asp:TextBox>
        <asp:Label ID="lblError" runat="server" Style="z-index: 117; left: 513px; position: absolute;
            top: 290px" Text="Label"></asp:Label>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 115;
            left: 357px; position: absolute; top: 286px" Text="Save Record" />
        &nbsp; &nbsp;
        <asp:Label ID="Label8" runat="server" Style="z-index: 116; left: 112px; position: absolute;
            top: 221px" Text="Path of image"></asp:Label>
    
    </div>
    </form>
</body>
</html>
