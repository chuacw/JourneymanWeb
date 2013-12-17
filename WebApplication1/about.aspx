<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="JourneymanWeb.WebForm1" %>
<%@ Register TagPrefix="JourneymanHeader" TagName="NavigationHeader" Src="~/NavigationHeader.ascx" %>
<%@ Register TagPrefix="JourneymanFooter" TagName="Copyright" Src="~/JourneymanCopyright.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<asp:Literal Text='<%$Resources:Global,htmllang%>' runat='server' />">
<head runat="server">
    <title>
        <asp:Literal ID="Literal1" Text="<%$Resources:AboutJourneyman%>" runat="server" />
    </title>
<script type="text/javascript" src="/scripts/analytics.js"></script>
</head>
<body>
    <JourneymanHeader:NavigationHeader runat="server" />
    <asp:Literal ID="Literal2" Text="<%$Resources:JourneymanStartedBy%>" runat="server" />
    <ul>
    <li><asp:Literal ID="Literal3" Text="<%$Resources:Certifications1%>" runat="server" /></li>
    <li><asp:Literal ID="Literal4" Text="<%$Resources:Certifications2%>" runat="server" /></li>
    <li><asp:Literal ID="Literal5" Text="<%$Resources:Certifications3%>" runat="server" /></li>
    <li><asp:Literal ID="Literal6" Text="<%$Resources:Certifications4%>" runat="server" /></li>
    <li><asp:Literal ID="Literal7" Text="<%$Resources:Certifications5%>" runat="server" /></li>
    <li><asp:Literal ID="Literal8" Text="<%$Resources:Certifications6%>" runat="server" /></li>
    <li><asp:Literal ID="Literal9" Text="<%$Resources:Certifications7%>" runat="server" /></li>
    </ul>
    <asp:Literal ID="Literal10" Text="<%$Resources:PriorToWorkedAs1%>" runat="server" /><asp:Literal ID="Literal17" Text="<%$Resources:PriorToWorkedAs2%>" runat="server" /><asp:Literal ID="Literal18" Text="<%$Resources:PriorToWorkedAs3%>" runat="server" />
    <ul>
        <li><asp:Literal ID="Literal11" Text="<%$Resources:Positions1%>" runat="server" /></li>
        <li><asp:Literal ID="Literal12" Text="<%$Resources:Positions2%>" runat="server" /></li>
        <li><asp:Literal ID="Literal13" Text="<%$Resources:Positions3%>" runat="server" /></li>
        <li><asp:Literal ID="Literal14" Text="<%$Resources:Positions4%>" runat="server" /></li>
        <li><asp:Literal ID="Literal15" Text="<%$Resources:Positions5%>" runat="server" /></li>
        <li><asp:Literal ID="Literal16" Text="<%$Resources:Positions6%>" runat="server" /></li>
    </ul><asp:Literal ID="Literal19" Text="<%$Resources:PriorToWorkedAs4%>" runat="server" />
    <asp:Literal ID="Literal20" Text="<%$Resources:Assurance%>" runat="server" />
    <p></p>
    <JourneymanFooter:Copyright ID="Copyright1" runat="server" />
    </body>
</html>
