<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlexConnectors.aspx.cs" Inherits="JourneymanWeb.ArcSight.FlexConnectors" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">
  <head>
	<title>Get custom FlexConnector functions
written for your specific purpose.</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="Software Development, ArcSight, FlexConnector,FlexConnectors" />
<meta name="keywords" content="ArcSight,FlexConnector,FlexConnectors,software Development" />
<meta name="author" content="Journeyman Consultancy & Services" />

  </head>
<body>
<img src="/images/ArcSightFlexConnector.jpg" width="0" height="0" />
<a href="/">Home</a>
<p >Scenario: You need a custom ArcSight FlexConnector function that's not defined in the FlexConnector SDK. You contact us, and tell us what you need.
<p >Your log reads like the following:<br/>2010-02-10 12:07:56,$3600,x<br/>2010-02-10 12:07:57,0x3600,x<br/>2010-02-10 12:07:58,$2a3b,x<br/>2010-02-10 12:07:59,0x2A3B,x<br/>2010-02-10 12:08:00,3600,x<br/>2010-02-10 12:08:01,3600,x<br/>

</p>
<p >You want a function that reads the 2nd token as a hexadecimal formatted integer and convert it to a long. The function might read, for example, as follows:<br/>
<br/>event.deviceCustomNumber1=__hexToLong(Token1)<br/>
<br/>Your FlexConnector sdkfilereader properties file reads as below:


</p>
<p >token.count=3<br/>token[0].name=Token0
      <br/>token[0].type=String
      <br/>token[0].format=yyyy-MM-dd HH\:mm\:ss
      <br/>token[1].name=Token1
      <br/>token[1].type=String
      <br/>token[2].name=Token2
      <br/>token[2].type=String


</p>
<p >
      <br>event.deviceCustomString1=Token1
      <br>event.deviceCustomNumber1=__hexToLong(Token1)


</p>
<p >We'll then develop such a function for you. Questions? <a href="mailto:enquiry@journeyman.ath.cx">Email us today!</a>


</p>
</body>
</html>
