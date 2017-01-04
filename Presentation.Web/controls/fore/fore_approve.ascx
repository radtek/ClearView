<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="fore_approve.ascx.cs" Inherits="NCC.ClearView.Presentation.Web.fore_approve" %>
<script type="text/javascript">
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="default">
    <tr>
        <td><img src="/images/table_topleft.gif" border="0" width="5" height="26"></td>
        <td nowrap background="/images/table_top.gif" class="greentableheader" width="100%">Design Override Approval (# <asp:Label ID="lblID" runat="server" CssClass="greentableheader" />)</td>
        <td><img src="/images/table_topright.gif" border="0" width="5" height="26"></td>
    </tr>
    <tr>
        <td background="/images/table_left.gif"><img src="/images/table_left.gif" width="5" height="10"></td>
        <td width="100%" bgcolor="#FFFFFF">
            <br />
            <asp:Panel ID="panShow" runat="server" Visible="false">
            <table width="100%" cellpadding="4" cellspacing="3" border="0">
                <tr>
                    <td nowrap>Project Name:</td>
                    <td width="100%"><asp:Label ID="lblName" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Project Number:</td>
                    <td width="100%"><asp:Label ID="lblNumber" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Portfolio:</td>
                    <td width="100%"><asp:Label ID="lblPortfolio" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Segment:</td>
                    <td width="100%"><asp:Label ID="lblSegment" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Platform:</td>
                    <td width="100%"><asp:Label ID="lblPlatform" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Nickname:</td>
                    <td width="100%"><asp:Label ID="lblNickname" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Commitment Date:</td>
                    <td width="100%"><asp:Label ID="lblCommitment" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Quantity:</td>
                    <td width="100%"><asp:Label ID="lblQuantity" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Confidence:</td>
                    <td width="100%"><asp:Label ID="lblConfidence" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Class:</td>
                    <td width="100%"><asp:Label ID="lblClass" runat="server" CssClass="default" /></td>
                </tr>
                <asp:Panel ID="panTest" runat="server" Visible="false">
                <tr>
                    <td nowrap>Test First?:</td>
                    <td width="100%"><asp:Label ID="lblTest" runat="server" CssClass="default" /></td>
                </tr>
                </asp:Panel>
                <tr>
                    <td nowrap>Environment:</td>
                    <td width="100%"><asp:Label ID="lblEnvironment" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Location:</td>
                    <td width="100%"><asp:Label ID="lblLocation" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>IP Address:</td>
                    <td width="100%"><asp:Label ID="lblIP" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Designed By:</td>
                    <td width="100%"><asp:Label ID="lblDesignedBy" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Designed On:</td>
                    <td width="100%"><asp:Label ID="lblDesignedOn" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap>Last Updated On:</td>
                    <td width="100%"><asp:Label ID="lblUpdated" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td nowrap bgcolor="#C1FFC1">Model:</td>
                    <td width="100%"><asp:Label ID="lblModel" runat="server" CssClass="default" /></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">Reason for Rejection (required if you deny this request):</td>
                </tr>
                <tr>
                    <td colspan="2"><asp:TextBox ID="txtComments" runat="server" CssClass="default" Width="90%" Rows="10" TextMode="multiLine" /></td>
                </tr>
                <tr>
                    <td colspan="2"><hr size="1" noshade /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnApprove" runat="server" CssClass="default" Width="75" Text="Approve" OnClick="btnApprove_Click" /> 
                        <asp:Button ID="btnDeny" runat="server" CssClass="default" Width="75" Text="Deny" OnClick="btnDeny_Click" />
                    </td>
                </tr>
            </table>
            </asp:Panel>
            <asp:Panel ID="panFinish" runat="server" Visible="false">
                <table width="100%" cellpadding="2" cellspacing="2" border="0">
                    <tr>
                        <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                        <td class="header"><img src="/images/bigCheck.gif" border="0" align="absmiddle" /> Record Updated</td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr>
                        <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                        <td>Your information has been saved successfully.</td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr>
                        <td colspan="2"><hr size="1" noshade /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="footer"></td>
                                    <td align="right"><asp:Button ID="btnFinish" runat="server" CssClass="default" Width="75" Text="Finish" OnClick="btnFinish_Click" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <p>&nbsp;</p>
        </td>
        <td background="/images/table_right.gif"><img src="/images/table_right.gif" width="5" height="10"></td>
    </tr>
    <tr>
        <td><img src="/images/table_bottomLeft.gif" border="0" width="5" height="9"></td>
        <td width="100%" background="/images/table_bottom.gif"></td>
        <td><img src="/images/table_bottomRight.gif" border="0" width="5" height="9"></td>
    </tr>
</table>
<asp:Label ID="lblStep" runat="server" Visible="false" />