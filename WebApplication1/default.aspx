<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="JourneymanWeb._default" %>
<%@ Register TagPrefix="JourneymanHeader" TagName="NavigationHeader" Src="~/NavigationHeader.ascx" %>
<%@ Register TagPrefix="JourneymanFooter" TagName="Copyright" Src="~/JourneymanCopyright.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="<asp:Literal Text='<%$Resources:Global,htmllang%>' runat='server' />">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="keywords" content="<asp:Literal Text='<%$Resources:Keywords%>' runat='server' />" />
    <meta name="description" content="<asp:Literal Text='<%$Resources:Description%>' runat='server' />" />
    <meta name="author" content="Journeyman Consultancy & Services" />
    <title><asp:Literal Text="<%$Resources:WelcomeTo%>" runat="server" /></title>
<script type="text/javascript" src="/scripts/analytics.js"></script>    
</head>
<body>
    <div id="main">
    <JourneymanHeader:NavigationHeader runat="server" />
    
        <img alt="Background" src="images/machines.jpg" width="705"
            height="200" /><br />
        
        <div id="content" >
            <p>
            </p>
            <h2>
                <asp:Literal runat="server" Text="<%$Resources:WhatWeCanDoForYou%>" /></h2>
            <p>
            </p>
            <ul>
                <li><asp:Literal ID="Literal1" runat="server" Text="<%$Resources:RemoveVirus%>" /></li>
                <li><asp:Literal ID="Literal2" runat="server" Text="<%$Resources:System_Repair_Rescue_Maintenance%>" /></li>
                <li><asp:Literal ID="Literal3" runat="server" Text="<%$Resources:InstallSoftware%>" />
                    /
                    <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:InstallHardware%>" /></li>
                <li><asp:Literal runat="server" Text="<%$Resources:DevelopSoftware%>" /> Android C# Delphi Java VB.NET ASP.NET Windows MacOS Linux</li>
                <li><asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Virtualization_Consultancy_Implementation%>" /></li>
                <li><asp:Literal ID="Literal6" runat="server" Text="<%$Resources:SetupServers%>" /></li>
                <li><asp:Literal ID="Literal7" runat="server" Text="<%$Resources:Code_review_optimization%>" /></li>
                <li><asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Development_IT_security_standards%>" /><!--Development of IT security standards--></li>
                <li><asp:Literal runat="server" Text="<%$Resources:Implementation_IT_disaster%>" /></li>
                <li><a href="ArcSight/FlexConnectors.aspx">Custom ArcSight FlexConnector development
                    (How it works)</a></li>
                <li>HP ArcSight ESM / SmartConnectors / Logger implementation</li>
            </ul>
            <p>
                <strong>
                    <asp:Label runat="server" Text="<%$Resources:JourneymanConsultancyAndServices%>" /></strong><br />
                40C Hong Kong Street<br />
                <asp:Literal ID="Literal9" runat="server" Text="<%$Resources:Singapore%>" />
                059679<br />
                <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:EmailUs%>" /><a href="mailto:enquiry@journeyman.ath.cx">enquiry
                    @ journeyman.ath.cx</a>
                <br />
                <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:CallUs%>" />(65) 9363-4096</p>
            <p>
                <strong><span>
                <JourneymanFooter:Copyright runat="server" />
                    <small><small><a href="http://www.freedigitalphotos.net/images/view_photog.php?photogid=1058">
                        Image: Arvind Balaraman / FreeDigitalPhotos.net</a></small></small></span></strong>
            </p>
        </div>

    </div>
    
</body>
</html>
<% showLang(); %>