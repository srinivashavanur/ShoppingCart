<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="Server">
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
   
        <asp:LoginStatus ID="LoginStatus1" runat="server" Style="z-index: 100; left: 48px;
            position: absolute; top: 203px" Width="160px" />
    
    
        <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>
                Welcome
                <br />
               
                <asp:LoginName ID="LoginName1" runat="server" Style="z-index: 100; left: 27px; position: absolute;" />
                    
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProfileInfo.aspx" Style="z-index: 101;
                    left: 17px; position: absolute; top: 160px" Width="300px">Click here for storing your Profile Information</asp:HyperLink>
                &nbsp;
               
            </LoggedInTemplate>
            <AnonymousTemplate>
                You are not logged in. Please log in first
            </AnonymousTemplate>
        </asp:LoginView>
   
</body>
</html>
</asp:Content>