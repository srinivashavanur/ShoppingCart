<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="Server">
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    
        <strong><span style="font-size: 16pt">
    Always at your Service
            <br />
            <br />
        </span></strong>
        <br />
        <br />
    
    You can contact us at following address :
        <br />
        <br />
    Srinivas Havanur
        <br />
    1064 W 48th Street Apt #23
        <br />
    Norfolk, VA - 23508
        <br />
    Phone : 7577541752 &nbsp;<br />
        <br />
        <strong><span style="font-size: 14pt">Email :<br />
        </span></strong>&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 100; left: 10px; position: absolute;
            top: 279px" NavigateUrl="mailto:srin.shav@gmail.com">srin.shav@gmail.com</asp:HyperLink>
        <br />
        &nbsp;
</body>
</html>
</asp:Content>
