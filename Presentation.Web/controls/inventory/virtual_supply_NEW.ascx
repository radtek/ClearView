<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="virtual_supply_NEW.ascx.cs" Inherits="NCC.ClearView.Presentation.Web.virtual_supply_NEW" %>


<script type="text/javascript">
</script>
<table width="100%" cellpadding="0" cellspacing="2" border="0">
    <tr>
        <td id="tdSideBar" valign="top" nowrap style="background-color:#F6F6F6">
            <table width="100%" cellpadding="3" cellspacing="2" border="0">
                <tr>
                    <td colspan="3">
                        <asp:Panel ID="panParameters" runat="server" Visible="false">
                            <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #404040" bgcolor="#FFFFFF">
                                <tr>
                                    <td nowrap><img src="/images/funnel.gif" border="0" align="absmiddle" /></td>
                                    <td width="100%" class="header">Applied Filters</td>
                                </tr>
                                <tr>
                                    <td colspan="2"><%=strParameters %></td>
                                </tr>
                            </table>
                            <br />
                            
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td nowrap><img src="/images/arrow_black_right.gif" border="0" /></td>
                    <td class="bigger" nowrap><b>Filters</b></td>
                    <td align="right"><asp:Button ID="btnGo2" runat="server" CssClass="default" Width="75" Text="Apply" OnClick="btnGo_Click" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td valign="top">Location:<br /><br /><asp:Button id="btnLocations" runat="server" Text="&lt; &gt;" CssClass="default" ToolTip="Maximize Listing" /> <asp:Button id="btnLocationsClear" runat="server" Text="X" Width="25" CssClass="default" ToolTip="Clear Selection(s)" /></td>
                    <td><asp:ListBox ID="lstLocations" runat="server" CssClass="smalldefault" Width="200" SelectionMode="Multiple" /> </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td valign="top">Class:<br /><br /><asp:Button id="btnClasses" runat="server" Text="&lt; &gt;" CssClass="default" ToolTip="Maximize Listing" /> <asp:Button id="btnClassesClear" runat="server" Text="X" Width="25" CssClass="default" ToolTip="Clear Selection(s)" /></td>
                    <td><asp:ListBox ID="lstClasses" runat="server" CssClass="smalldefault" Width="200" SelectionMode="Multiple" /> </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td valign="top">Environment:<br /><br /><asp:Button id="btnEnvironments" runat="server" Text="&lt; &gt;" CssClass="default" ToolTip="Maximize Listing" /> <asp:Button id="btnEnvironmentsClear" runat="server" Text="X" Width="25" CssClass="default" ToolTip="Clear Selection(s)" /></td>
                    <td><asp:ListBox ID="lstEnvironments" runat="server" CssClass="smalldefault" Width="200" SelectionMode="Multiple" /> </td>
                </tr>
                <tr>
                    <td colspan="3"><img src="/images/spacer.gif" border="0" width="1" height="1" /></td>
                </tr>
            </table>
        </td>
        <td valign="top" style="background-color:#C6C6C6;border-right:1px solid #999999;width:6px;padding-top:350px;">
            <a href="javascript:void(0)" onclick="SideBar(this);"><img src="/images/sidebar_collapse.gif" border="0" alt="Collapse Sidebar"></a>
        </td>
        <td valign="top" width="100%" height="100%">
            <table width="100%" cellpadding="4" cellspacing="0" border="0">
                <%=strSupply %>
            </table>
        </td>
    </tr>
</table>
<asp:HiddenField ID="hdnEnvironment" runat="server" />