<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="fore_generic.ascx.cs" Inherits="NCC.ClearView.Presentation.Web.fore_generic" %>
<script type="text/javascript">
</script>
<table width="100%" cellpadding="4" cellspacing="2" border="0">
    <tr>
        <td nowrap>
         <asp:Label ID="lblType" runat="server" CssClass="default" Text="<b>Type:</b><font class='required'>&nbsp;*</font>" />
        </td>
        <td width="100%"><asp:DropDownList ID="ddlTypes" runat="server" CssClass="default" Width="300" AutoPostBack="true" OnSelectedIndexChanged="ddlTypes_Change" /></td>
    </tr>
    <asp:Panel ID="panModels" runat="server" Visible="false">
    <tr>
        <td nowrap>
         <asp:Label ID="lblModel" runat="server" CssClass="default" Text="<b>Model:</b><font class='required'>&nbsp;*</font>" />
        </td>
        <td width="100%"><asp:DropDownList ID="ddlModels" runat="server" CssClass="default" Width="300" /></td>
    </tr>
    </asp:Panel>
</table>
<table width="100%" cellpadding="4" cellspacing="2" border="0">
    <tr>
        <td colspan="3"><hr size="1" noshade /></td>
    </tr>
    <tr>
        <td class="required">* = Required Field</td>
        <td align="center">
            <asp:Panel ID="panNavigation" runat="server" Visible="false">
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" CssClass="default" Width="75" /> <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next" CssClass="default" Width="75" />
            </asp:Panel>
            <asp:Panel ID="panUpdate" runat="server" Visible="false">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" CssClass="default" Width="75" /> <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" CssClass="default" Width="75" />
            </asp:Panel>
        </td>
        <td align="right">
            <asp:Button ID="btnHundred" runat="server" OnClick="btnCancel_Click" Text="Back" CssClass="default" Width="75" Visible="false" /> 
            <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="default" Width="75" />
        </td>
    </tr>
    </asp:Panel>
</table>
<input type="hidden" id="hdnParent" runat="server" />
