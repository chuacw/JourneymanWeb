<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testCookies.aspx.cs" Inherits="JourneymanWeb.testCookies" %>
<%@ Import Namespace="JourneymanWeb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView
        id="grdCookies"
        Runat="server"/>
    </div>
    <a href="?hl=en">English</a> <a href="?hl=zh">中文</a>
    </form>
    <% WebUtils.showLang(); %>
</body>
</html>
