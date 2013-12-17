<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavigationHeader.ascx.cs" Inherits="JourneymanWeb.NavigationHeader" %>
<div id="header_wrapper">
<div style="float:left">
<a href="/"><asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Home%>" /></a>&nbsp;|
<a href="about.aspx"><asp:Literal ID="Literal2" runat="server" Text="<%$Resources:AboutUs%>" /></a>
|&nbsp;<a href="mailto:enquiry@journeyman.ath.cx"><asp:Literal ID="Literal3" runat="server" Text="<%$Resources:ContactUs%>" /></a>
</div>
<div style="float:right"><a href="?hl=zh">中文</a>&nbsp;|&nbsp;<a href="?hl=en">English</a></div>
</div>
<br />