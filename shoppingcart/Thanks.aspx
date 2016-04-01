<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="Thanks" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="Server">
    <%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="Thanks" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    
        <span style="font-size: 16pt"><strong>
        Thanks a lot for your Order<br />
            <br />
        Your Order Number is
        <br />
            <br />
        We will try to deliver the products at our earliest<br />
            <br />
        For enquiries contact at the following Address :<br />
            Please don't forget to mention
        your order number
            <br />
            <br />
        Srinivas Havanur
        <br />
    1064 W 48th Street Apt #23
        <br />
    Norfolk, VA-23508
        <br />
    Phone : +17577541752 &nbsp;<br />
        </strong></span>
        <br />
        <strong><span style="font-size: 14pt">Email :<br />
        </span></strong>&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 100; left: 11px; position: absolute;
            top: 376px" NavigateUrl="mailto:srin.shav@gmail.com">srin.shav@gmail.com</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="XX-Large" Style="z-index: 102; left: 232px; position: absolute; top: 54px"
            Text="Label"></asp:Label>
        <br />
       
</body>
</html>
</asp:Content>