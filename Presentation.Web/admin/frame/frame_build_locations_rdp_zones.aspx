<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frame_build_locations_rdp_zones.aspx.cs" Inherits="NCC.ClearView.Presentation.Web.frame_build_locations_rdp_zones" %>

<script type="text/javascript">
</script>
<html>
<head>
<title>Web Content Management Administration</title>
<link rel="stylesheet" type="text/css" href="/css/default.css" />
<script type="text/javascript" src="/javascript/global.js"></script>
</head>
<body topmargin="0" leftmargin="0">
<form id="Form1" runat="server">
<table width="100%" height="100%" border="0" cellSpacing="0" cellPadding="0">
    <tr height="1">
        <td colspan="2">
            <table width="100%" border="0" cellSpacing="2" cellPadding="2" bgcolor="#e6e9f0">
	            <tr bgcolor="#e6e9f0">
		            <td><b><asp:Label ID="lblName" runat="server" CssClass="default" /> Zones</b></td>
	                <td align="right">
			            <a href="javascript:void(0);" onclick="parent.HidePanel();"><img src="/admin/images/close.gif" border="0" title="Close"></a>
	                </td>
	            </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <div style="height:100%; width:100%; overflow:auto;">
                <asp:TreeView ID="oTree" runat="server" CssClass="default" ShowCheckBoxes="Leaf" ShowLines="true" NodeIndent="30">
                </asp:TreeView>
            </div>
        </td>
    </tr>
    <tr height="1">
        <td bgcolor="#c8cfdd"></td>
        <td align="right" bgcolor="#c8cfdd">
            <asp:Button ID="btnSave" runat="server" Text="Save" Width="75" CssClass="default" OnClick="btnSave_Click" /> 
            <asp:Button ID="btnClose" runat="server" Text="Close" Width="75" CssClass="default" />
        </td>
    </tr>
    <tr><td colspan="2" height="5" bgcolor="#c8cfdd"><img src="images/spacer.gif" width="1" height="5" /></td></tr>
</table>
</form>
</body>
</html>
