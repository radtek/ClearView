<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webservices.aspx.cs" Inherits="NCC.ClearView.Presentation.Web.webservices" %>

<script type="text/javascript">
    var oAdd = null;
    var oView = null;
    var oAddButton = null;
    var oDeleteButton = null;
    var oHidden = null;
    var oName = null;
    var oRead = null;
    var oWrite = null;
    var oEnabled = null;
    function Edit(strId, strName, strRead, strWrite, strEnabled) {
        oAdd.style.display = "inline";
        oView.style.display = "none";
        oAddButton.value = "Update";
        oDeleteButton.style.display = "inline";
        oHidden.value = strId;
        oName.value = strName;
        oRead.checked = (strRead == "1");
        oWrite.checked = (strWrite == "1");
        oEnabled.checked = (strEnabled == "1");
    }
    function Add() {
        oAdd.style.display = "inline";
        oView.style.display = "none";
        oAddButton.value = "Add";
        oDeleteButton.style.display = "none";
        oHidden.value = "0";
        oName.value = "";
        oRead.checked = false;
        oWrite.checked = false;
        oEnabled.checked = false;
        oName.focus();
    }
    function Cancel() {
        oAdd.style.display = "none";
        oView.style.display = "inline";
        return false;
    }
    function Load() {
        oAdd = document.getElementById('<%=divAdd.ClientID%>');
        oView = document.getElementById('<%=divView.ClientID%>');
        oAddButton = document.getElementById('<%=btnAdd.ClientID%>');
        oDeleteButton = document.getElementById('<%=btnDelete.ClientID%>');
        oHidden = document.getElementById('<%=hdnId.ClientID%>');
        oName = document.getElementById('<%=txtName.ClientID%>');
        oRead = document.getElementById('<%=chkRead.ClientID%>');
        oWrite = document.getElementById('<%=chkWrite.ClientID%>');
        oEnabled = document.getElementById('<%=chkEnabled.ClientID%>');
    }
</script>
<html>
<head>
<title>ClearView Administration</title>
<link rel="stylesheet" type="text/css" href="/css/default.css" />
<script type="text/javascript" src="/javascript/global.js"></script>
</head>
<body topmargin="0" leftmargin="0" onload="Load()">
<form id="Form1" runat="server">
        <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
        <td height="100%">
        <div style="height:100%; overflow:auto">
<table width="98%" cellpadding="0" cellspacing="0" border="0" align="center">
		<tr><td colspan="2">&nbsp;</td></tr>
		<tr> 
		    <td><b>Web Service Methods</b></td>
		    <td align="right"><a href="javascript:void(0);" onclick="Add();" class="cmlink" title="Click to Add New">Add New</a></td>
		</tr>
		<tr><td colspan="2">&nbsp;</td></tr>
		<tr>
		    <td colspan="2" align="center">
                <div ID="divView" runat="server">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <asp:repeater ID="rptView" runat="server">
                                    <HeaderTemplate>
                                        <table width="100%" cellpadding="3" cellspacing="0" border="0" align="center">
                                            <tr bgcolor="#CCCCCC">
                                                <td class="bold">&nbsp;</td>
                                                <td width="40%" class="bold"><asp:linkbutton ID="lnkName" Text="Name" CommandArgument="name" CssClass="bold" OnClick="OrderView" runat="server"/></td>
                                                <td width="20%" class="bold"><asp:linkbutton ID="lnkRead" Text="Can Read" CommandArgument="can_read" CssClass="bold" OnClick="OrderView" runat="server"/></td>
                                                <td width="20%" class="bold"><asp:linkbutton ID="lnkWrite" Text="Can Write" CommandArgument="can_write" CssClass="bold" OnClick="OrderView" runat="server"/></td>
                                                <td width="20%" class="bold"><asp:linkbutton ID="lnkModified" Text="Last Modified" CommandArgument="modified" CssClass="bold" OnClick="OrderView" runat="server"/></td>
                                                <td class="bold" align="center"><asp:linkbutton ID="lnkEnabled" Text="Enabled" CommandArgument="enabled" CssClass="bold" OnClick="OrderView" runat="server"/></td>
                                            </tr>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr bgcolor="#EFEFEF" onmouseover="AdminMouseOver(this);" onmouseout="AdminMouseOut(this);" onclick="if(event.srcElement.tagName != 'INPUT')Edit('<%# DataBinder.Eval(Container.DataItem, "id") %>','<%# DataBinder.Eval(Container.DataItem, "name") %>','<%# DataBinder.Eval(Container.DataItem, "can_read") %>','<%# DataBinder.Eval(Container.DataItem, "can_write") %>','<%# DataBinder.Eval(Container.DataItem, "enabled") %>');" class="default">
                                            <td width="5%" align="left">&nbsp;<asp:ImageButton ID="btnDelete" OnClick="btnDeleteLink_Click" runat="server" ToolTip="Delete" ImageAlign="AbsMiddle" ImageUrl="/admin/images/delete.gif" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id") %>' /></td>
                                            <td width="40%">&nbsp;<%# DataBinder.Eval(Container.DataItem, "name") %></td>
                                            <td width="20%"><%# (DataBinder.Eval(Container.DataItem, "can_read").ToString() == "1" ? "Yes" : "No")%></td>
                                            <td width="20%"><%# (DataBinder.Eval(Container.DataItem, "can_write").ToString() == "1" ? "Yes" : "No")%></td>
                                            <td width="20%">&nbsp;<%# DataBinder.Eval(Container.DataItem, "modified") %></td>
                                            <td align="center"><asp:ImageButton ID="btnEnable" runat="server" ImageAlign="AbsMiddle" ImageUrl='<%# (DataBinder.Eval(Container.DataItem, "enabled").ToString() == "1") ? "/admin/images/enabled.gif" : "/admin/images/disabled.gif" %>' CommandArgument='<%# DataBinder.Eval(Container.DataItem, "id") %>' OnClick="btnEnable_Click" /></td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </table>
                                    </FooterTemplate>
                                </asp:repeater>
                            </td>
                        </tr>
                    </table>
                </div>

                <div id="divAdd" runat="server" style="display:none">
                    <table width="95%" cellpadding="3" cellspacing="0" border="0" align="center">
                        <tr> 
                            <td class="default" width="100px">Name:</td>
                            <td><asp:textbox ID="txtName" CssClass="default" runat="server" Width="300" MaxLength="100"/></td>
                        </tr>
                        <tr> 
                            <td>Can Read:</td>
                            <td width="100%"><asp:CheckBox ID="chkRead" runat="server" CssClass="default" /></td>
                        </tr>
                        <tr> 
                            <td>Can Write:</td>
                            <td width="100%"><asp:CheckBox ID="chkWrite" runat="server" CssClass="default" /></td>
                        </tr>
                        <tr> 
                            <td class="default">Enabled:</td>
                            <td><asp:CheckBox ID="chkEnabled" runat="server" Checked="true" /></td>
                        </tr>
                        <tr> 
                            <td class="cmdefault">&nbsp;</td>
                            <td><asp:Button ID="btnUsers" runat="server" Text="Edit Users" Width="125" CssClass="default" /></td>
                        </tr>
                        <tr><td height="5" colspan="2">&nbsp;</td></tr>
                        <tr> 
                            <td>&nbsp;</td>
                            <td>
                                <asp:button ID="btnAdd" CssClass="default" runat="server" Text="Add" Width="75" OnClick="btnAdd_Click" />
                                <asp:button ID="btnDelete" CssClass="default" runat="server" Text="Delete" Width="75" OnClick="btnDelete_Click" />
                                <asp:button ID="btnCancel" CssClass="default" runat="server" Text="Cancel" Width="75" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
        </div>
        </td>
        </tr>
        </table>
    <input type="hidden" id="hdnId" runat="server" />
</form>
</body>
</html>
