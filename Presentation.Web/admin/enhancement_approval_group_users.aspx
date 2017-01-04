<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enhancement_approval_group_users.aspx.cs" Inherits="NCC.ClearView.Presentation.Web.enhancement_approval_group_users" %>

<script type="text/javascript">
function EnsureRadioButtons(oObject1, oObject2, strAlert) {
    oObject1 = document.getElementById(oObject1);
    if (oObject1.checked == true)
        return true;
    else {
        oObject2 = document.getElementById(oObject2);
        if (oObject2.checked == true)
            return true;
        else {
            alert(strAlert);
            oObject1.focus();
            return false;
        }
    }
    return true;
}
function EnsureHidden(oObject, oText, strAlert) {
    oObject = document.getElementById(oObject);
    if (oObject != null && oObject.value == "") {
        oText = document.getElementById(oText);
        alert(strAlert);
        oText.focus();
        return false;
    }
    return true;
}
</script>
<html>
<head>
<title>Web Content Management Administration</title>
<link rel="stylesheet" type="text/css" href="/css/default.css" />
<script type="text/javascript" src="/javascript/global.js"></script>
<script type="text/javascript" src="/javascript/ajax.js"></script>
</head>
<body topmargin="0" leftmargin="0">
<form id="Form1" runat="server">
<table width="100%" height="100%" border="0" cellSpacing="0" cellPadding="0">
    <tr height="1">
        <td colspan="2">
            <table width="100%" border="0" cellSpacing="2" cellPadding="2" bgcolor="#e6e9f0">
	            <tr bgcolor="#e6e9f0">
		            <td><b>Approval Group Approvers</b></td>
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
            <table width="100%" height="100%" border="0" cellSpacing="2" cellPadding="2" bgcolor="#c8cfdd">
                <tr height="1"> 
                    <td nowrap>Approval Group:</td>
                    <td width="100%"><asp:label ID="lblName" CssClass="bold" runat="server" /></td>
                </tr>
                <tr height="1"> 
                    <td class="default">Approver:</td>
                    <td>
                        <table cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td><asp:TextBox ID="txtUser" runat="server" Width="300" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="divAJAX" runat="server" style="overflow:hidden; position:absolute; display:none; background-color:#FFFFFF; border:solid 1px #CCCCCC">
                                        <asp:ListBox ID="lstAJAX" runat="server" CssClass="default" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" id="hdnAJAXValue" name="hdnAJAXValue" />
                    </td>
                </tr>
                <tr height="1">
                    <td>&nbsp;</td>
                    <td><asp:Button ID="btnAdd" runat="server" CssClass="default" Width="75" Text="Add" OnClick="btnAdd_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2" valign="top">
                        <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC; background-color:#FFFFFF">
                            <tr bgcolor="#EEEEEE">
                                <td nowrap><b>Approver</b></td>
                                <td nowrap><b></b></td>
                            </tr>
                            <asp:repeater ID="rptItems" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%# DataBinder.Eval(Container.DataItem, "username") %></td>
                                        <td align="right">[<asp:LinkButton ID="btnDelete" runat="server" CssClass="default" Text="Delete" OnClick="btnDelete_Click" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id") %>' />]</td>
                                    </tr>
                                </ItemTemplate>
                            </asp:repeater>
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="lblNone" runat="server" CssClass="default" Visible="false" Text="<img src='/images/alert.gif' border='0' align='absmiddle'> There are no items..." />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
	            <tr height="1">
	                <td colspan="2"><hr size="1" noshade /></td>
	            </tr>
            </table>
            </div>
        </td>
    </tr>
    <tr height="1">
        <td bgcolor="#c8cfdd" align="center">
        </td>
        <td align="right" bgcolor="#c8cfdd">
            <asp:Button ID="btnClose" runat="server" Text="Close" Width="75" CssClass="default" />
        </td>
    </tr>
    <tr><td colspan="2" height="5" bgcolor="#c8cfdd"><img src="images/spacer.gif" width="1" height="5" /></td></tr>
</table>
<asp:Label ID="lblId" runat="server" Visible="false" />
    <asp:HiddenField ID="hdnUser" runat="server" />
</form>
</body>
</html>
