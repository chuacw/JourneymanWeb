<%@ Page Title="" Language="C#" MasterPageFile="~/Journeyman.Master" AutoEventWireup="true"
    CodeBehind="MasterDefault.aspx.cs" Inherits="JourneymanWeb.MasterDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <asp:Literal ID="Literal1" Text="<%$Resources:Global,WelcomeTo%>" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="<asp:Literal Text='<%$Resources:Global,Keywords%>' runat='server' />" />
    <meta name="description" content="<asp:Literal Text='<%$Resources:Global,Description%>' runat='server' />" />
    <meta name="author" content="Journeyman Consultancy & Services" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pagebody" runat="server">
    <img alt="Background" src="images/machines.jpg" width="705" height="200" /><br />
    <div id="content">
        <p>
        </p>
        <h2>
            <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:WhatWeCanDoForYou%>" /></h2>
        <p>
        </p>
        <ul>
            <li>
                <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:RemoveVirus%>" /></li>
            <li>
                <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:System_Repair_Rescue_Maintenance%>" /></li>
            <li>
                <asp:Literal ID="Literal5" runat="server" Text="<%$Resources:InstallSoftware%>" />
                /
                <asp:Literal ID="Literal6" runat="server" Text="<%$Resources:InstallHardware%>" /></li>
            <li>
                <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:DevelopSoftware%>" /></li>
            <li>
                <asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Virtualization_Consultancy_Implementation%>" /></li>
            <li>
                <asp:Literal ID="Literal9" runat="server" Text="<%$Resources:SetupServers%>" /></li>
            <li>
                <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Code_review_optimization%>" /></li>
            <li>
                <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Development_IT_security_standards%>" /><!--Development of IT security standards--></li>
            <li>
                <asp:Literal ID="Literal12" runat="server" Text="<%$Resources:Implementation_IT_disaster%>" /></li>
            <li><a href="ArcSight/FlexConnectors.aspx">Custom ArcSight FlexConnector development
                (How it works)</a></li>
            <li>HP ArcSight ESM / SmartConnectors / Logger implementation</li>
        </ul>
        <p>
            <strong>
                <asp:Literal ID="Literal13" runat="server" Text="<%$Resources:JourneymanConsultancyAndServices%>" /></strong><br />
            40C Hong Kong Street<br />
            <asp:Literal ID="Literal14" runat="server" Text="<%$Resources:Singapore%>" />
            059679<br />
            <asp:Literal ID="Literal15" runat="server" Text="<%$Resources:EmailUs%>" /><a href="mailto:enquiry@journeyman.ath.cx">enquiry
                @ journeyman.ath.cx</a>
            <br />
            <asp:Literal ID="Literal16" runat="server" Text="<%$Resources:CallUs%>" />(+65) 9363-4096</p>
    </div>
</asp:Content>
