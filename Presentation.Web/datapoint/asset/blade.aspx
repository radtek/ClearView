<%@ Page Language="C#" MasterPageFile="~/datapoint.Master" AutoEventWireup="true" CodeBehind="blade.aspx.cs" Inherits="NCC.ClearView.Presentation.Web.blade" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AllContent" runat="server">
<script type="text/javascript">
        var ddlAssetAttribute = null;
        var txtAssetAttributeComment = null;
        window.onload = function Load() 
        {
             ddlAssetAttribute = document.getElementById('<%=ddlAssetAttribute.ClientID%>');
             txtAssetAttributeComment = document.getElementById('<%=txtAssetAttributeComment.ClientID%>');
             SetControlsForAssetAttributes();
        }
        function SetControlsForAssetAttributes()
        {
         if (ddlAssetAttribute != null) 
        {   
            if (ddlAssetAttribute.options[ddlAssetAttribute.selectedIndex].value != "0" )
                txtAssetAttributeComment.disabled=false;
            else
            {   txtAssetAttributeComment.value="";
                txtAssetAttributeComment.disabled=true;
            }
            
          }
          return false;      
            
        }
</script>


    <asp:Panel ID="panAllow" runat="server" Visible="false">
    <table width="100%" cellpadding="0" cellspacing="5" border="0">
        <tr id="cntrlButtons">
            <td rowspan="2"><img src="/images/assets.gif" border="0" align="absmiddle" /></td>
            <td class="header" nowrap valign="bottom"><asp:Label ID="lblHeader" runat="server" CssClass="header" /></td>
            <td width="100%" rowspan="2" align="right">
                <table cellpadding="1" cellspacing="4" border="0">
                    <tr>
                        <td nowrap><asp:LinkButton ID="btnNew" runat="server" Text="<img src='/images/new-icon.gif' border='0' align='absmiddle' /><img src='/images/spacer.gif' border='0' width='5' height='1' />New Search" OnClick="btnNew_Click" /></td>
                        <td>|</td>
                        <td nowrap><asp:LinkButton ID="btnSave" runat="server" Text="<img src='/images/save-icon.gif' border='0' align='absmiddle' /><img src='/images/spacer.gif' border='0' width='5' height='1' />Save" OnClick="btnSave_Click" /></td>
                        <td>|</td>
                        <td nowrap><asp:LinkButton ID="btnSaveClose" runat="server" Text="<img src='/images/save-icon.gif' border='0' align='absmiddle' /><img src='/images/spacer.gif' border='0' width='5' height='1' />Save & Close" OnClick="btnSaveClose_Click" /></td>
                        <td>|</td>
                        <td nowrap><asp:LinkButton ID="btnPrint" runat="server" Text="<img src='/images/print-icon.gif' border='0' align='absmiddle' /><img src='/images/spacer.gif' border='0' width='5' height='1' />Print" /></td>
                        <td>|</td>
                        <td nowrap><asp:LinkButton ID="btnClose" runat="server" Text="<img src='/images/close-icon.gif' border='0' align='absmiddle' /><img src='/images/spacer.gif' border='0' width='5' height='1' />Close" /></td>
                    </tr>
                    <asp:Panel ID="panSave" runat="server" Visible="false">
                    <tr>
                        <td colspan="7" class="bigCheck" align="center"><img src="/images/bigCheck.gif" border="0" align="absmiddle" /> Update Successful</td>
                    </tr>
                    </asp:Panel>
                    <asp:Panel ID="panError" runat="server" Visible="false">
                    <tr>
                        <td colspan="7" class="bigError" align="center"><img src="/images/bigError.gif" border="0" align="absmiddle" /> <asp:Label ID="lblError" runat="server" /></td>
                    </tr>
                    </asp:Panel>
                </table>
            </td>
        </tr>
        <tr id="cntrlButtons2">
            <td nowrap valign="top"><asp:Label ID="lblHeaderSub" runat="server" CssClass="default" /></td>
        </tr>
        <tr id="cntrlProcessing" style="display:none">
            <td colspan="20">
                <table width="100%" cellpadding="0" cellspacing="5" border="0">
                    <tr>
                        <td rowspan="2"><img src="/images/saving.gif" border="0" align="absmiddle" /></td>
                        <td class="header" width="100%" valign="bottom">Processing...</td>
                    </tr>
                    <tr>
                        <td width="100%" valign="top">Please do not close this window while the page is processing.  Please be patient....</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <%=strMenuTab1 %>
    <table width="100%" height="100%" cellpadding="10" cellspacing="5" border="0">
        <tr>
            <td valign="top">
                <div id="divMenu1" class="tabbing">
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2">Asset Information&nbsp;&nbsp;<asp:Label ID="lblAssetID" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldName" runat="server" CssClass="default" Text="Device Name:" /></td>
                                <td width="100%"><asp:Label ID="lblName" runat="server" CssClass="default" /><asp:TextBox ID="txtName" runat="server" CssClass="default" MaxLength="100" Width="250" /> <asp:Button ID="btnNameLookup" runat="server" CssClass="default" Width="75" Text="Lookup" Visible="false" /> <asp:Button ID="btnName" runat="server" CssClass="default" Width="75" Text="Change" Visible="false" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformSerial" runat="server" CssClass="default" Text="Serial Number" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformSerial" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformSerial" runat="server" CssClass="default" MaxLength="100" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformAsset" runat="server" CssClass="default" Text="Asset Tag:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformAsset" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformAsset" runat="server" CssClass="default" MaxLength="100" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldAssetAttribute" runat="server" CssClass="default" Text="Asset Attribute:" /></td>
                                <td width="100%"><asp:Label ID="lblAssetAttribute" runat="server" CssClass="default" /><asp:DropDownList ID="ddlAssetAttribute" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                             <tr >
                                <td ><asp:Label ID="fldAssetAttributeComment" runat="server" CssClass="default" Text="Asset Attribute Comment:" /></td>
                                <td width="100%"><asp:Label ID="lblAssetAttributeComment" runat="server" CssClass="default" /><asp:TextBox ID="txtAssetAttributeComment" runat="server" CssClass="default" MaxLength="100" Width="400" TextMode="MultiLine" Rows="2"/></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatform" runat="server" CssClass="default" Text="Platform:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatform" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatform" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformType" runat="server" CssClass="default" Text="Type:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformType" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformType" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformModel" runat="server" CssClass="default" Text="Model:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformModel" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformModel" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformModelProperty" runat="server" CssClass="default" Text="Model Property:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformModelProperty" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformModelProperty" runat="server" CssClass="default" Width="400" /> <asp:Button ID="btnModel" runat="server" CssClass="default" Width="75" Text="Lookup" Visible="false" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformClass" runat="server" CssClass="default" Text="Class:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformClass" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformClass" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformEnvironment" runat="server" CssClass="default" Text="Environment:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformEnvironment" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformEnvironment" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformILO" runat="server" CssClass="default" Text="Remote Management:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformILO" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformILO" runat="server" CssClass="default" MaxLength="15" Width="200" /> <asp:Button ID="btnILO" runat="server" CssClass="default" Width="75" Text="Open" Visible="false" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformDummy" runat="server" CssClass="default" Text="Dummy Name:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformDummy" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformDummy" runat="server" CssClass="default" MaxLength="50" Width="300" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformMAC" runat="server" CssClass="default" Text="MAC Address:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformMAC" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformMAC" runat="server" CssClass="default" MaxLength="50" Width="300" /> <asp:Button ID="btnMAC" runat="server" CssClass="default" Width="75" Text="Query" Visible="false" OnClick="btnMAC_Click" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformVLAN" runat="server" CssClass="default" Text="Original VLAN:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformVLAN" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformVLAN" runat="server" CssClass="default" MaxLength="4" Width="50" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformBuildNetwork" runat="server" CssClass="default" Text="Build Network:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformBuildNetwork" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformBuildNetwork" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldEnclosure" runat="server" CssClass="default" Text="Enclosure Name:" /></td>
                                <td width="100%"><asp:Label ID="lblEnclosure" runat="server" CssClass="default" /><asp:DropDownList ID="ddlEnclosure" runat="server" CssClass="default" Width="400" /> <asp:Button ID="btnEnclosure" runat="server" CssClass="default" Width="75" Text="Lookup" Visible="false" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldEnclosureSerial" runat="server" CssClass="default" Text="Enclosure Serial Number:" /></td>
                                <td width="100%"><asp:Label ID="lblEnclosureSerial" runat="server" CssClass="default" /><asp:TextBox ID="txtEnclosureSerial" runat="server" CssClass="default" MaxLength="100" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldEnclosureAsset" runat="server" CssClass="default" Text="Enclosure Asset Tag:" /></td>
                                <td width="100%"><asp:Label ID="lblEnclosureAsset" runat="server" CssClass="default" /><asp:TextBox ID="txtEnclosureAsset" runat="server" CssClass="default" MaxLength="100" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldEnclosureSlot" runat="server" CssClass="default" Text="Slot:" /></td>
                                <td width="100%"><asp:Label ID="lblEnclosureSlot" runat="server" CssClass="default" /><asp:TextBox ID="txtEnclosureSlot" runat="server" CssClass="default" MaxLength="2" Width="50" /><asp:Label ID="lblFullHeight" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldEnclosureSpare" runat="server" CssClass="default" Text="Spare:" /></td>
                                <td width="100%"><asp:Label ID="lblEnclosureSpare" runat="server" CssClass="default" /><asp:CheckBox ID="chkEnclosureSpare" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformResiliency" runat="server" CssClass="default" Text="Resiliency:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformResiliency" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformResiliency" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformOperatingSystemGroup" runat="server" CssClass="default" Text="Operating System Group:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformOperatingSystemGroup" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformOperatingSystemGroup" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformDRCounterPart" runat="server" CssClass="default" Text="DR Counterpart:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformDRCounterPart" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformDRCounterPart" runat="server" CssClass="default" MaxLength="100" Width="400" /> <asp:Button ID="btnPlatformDRCounterPart" runat="server" CssClass="default" Width="75" Text="Lookup" Visible="false" /></td>
                            </tr>
                            <tr>
                                <td nowrap>Asset Status:</td>
                                <td width="100%"><asp:Label ID="lblStatus" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldRedeploy" runat="server" CssClass="default" Text="Redeploy Asset:" /></td>
                                <td width="100%"><asp:Button ID="btnRedeploy" runat="server" CssClass="default" Text="Execute" Width="75" OnClick="btnRedeploy_Click" /></td>
                            </tr>
                        </table>
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2"><asp:Label ID="fldWWW" runat="server" CssClass="header" Text="World Wide Port Names" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC">
                                        <asp:repeater ID="rptWWW" runat="server">
                                            <HeaderTemplate>
                                                <tr bgcolor="#EEEEEE">
                                                    <td></td>
                                                    <td nowrap><b>Name</b></td>
                                                    <td nowrap><b>Last Updated</b></td>
                                                </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="50%"><%# DataBinder.Eval(Container.DataItem, "name")%></td>
                                                    <td width="50%"><%# DataBinder.Eval(Container.DataItem, "modified")%></td>
                                                </tr>
                                            </ItemTemplate>
                                            <AlternatingItemTemplate>
                                                <tr bgcolor="#F6F6F6">
                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="50%"><%# DataBinder.Eval(Container.DataItem, "name")%></td>
                                                    <td width="50%"><%# DataBinder.Eval(Container.DataItem, "modified")%></td>
                                                </tr>
                                            </AlternatingItemTemplate>
                                        </asp:repeater>
                                        <tr>
                                            <td colspan="5"><asp:Label ID="lblWWW" runat="server" CssClass="default" Visible="false" Text="<img src='/images/spacer.gif' border='0' height='1' width='25' /><img src='/images/alert.gif' border='0' align='absmiddle'> There are no items" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><asp:Button ID="btnWWW" runat="server" CssClass="default" Width="100" Text="Manage" Visible="false" /></td>
                            </tr>
                        </table>
                    </div>
                    <div id="divNetworkAdapter" runat="server" visible="false" style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2"><asp:Label ID="fldNetworkAdapter" runat="server" CssClass="header" Text="Network Adapter Configuration" /></td>
                            </tr>
                            <tr>
                                <td colspan="2"><asp:Button ID="btnNetworkAdapter" runat="server" CssClass="default" Width="200" Text="Query Virtual Connect" OnClick="btnNetworkAdapter_Click" /></td>
                            </tr>
                            <asp:Panel ID="panNetworkAdapterQuery" runat="server" Visible="false">
                            <tr>
                                <td colspan="2"><img src="/images/bigAlert.gif" border="0" align="absmiddle" /> Click on the &quot;Query Virtual Connect&quot; button to query the network adapter configuration.</td>
                            </tr>
                            </asp:Panel>
                            <asp:Panel ID="panNetworkAdapterDone" runat="server" Visible="false">
                            <tr>
                                <td nowrap>Server Profile:</td>
                                <td width="100%"><asp:Label ID="lblProfile" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>Power Status:</td>
                                <td width="100%"><asp:Label ID="lblPower" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC">
                                        <tr bgcolor="#EEEEEE">
                                            <td width="100"></td>
                                            <td nowrap><b>Network Port</b></td>
                                            <td nowrap><b>VLAN</b></td>
                                            <td nowrap><b>Status</b></td>
                                            <td nowrap><b>PXE Enabled</b></td>
                                            <td nowrap><b>MAC Address</b></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td width="100">Click to Edit <img src="/images/arrow_green_right.gif" border="0" align="absmiddle" /></td>
                                            <td><asp:CheckBox ID="chkAdpater1" runat="server" CssClass="default" Text="Port # 1" Enabled="false" /></td>
                                            <td><asp:DropDownList ID="ddlAdapter1VLAN" runat="server" CssClass="default" Width="100" /></td>
                                            <td><asp:Label ID="lblAdapter1Status" runat="server" CssClass="default" /></td>
                                            <td>
                                                <asp:DropDownList ID="ddlAdapter1PXE" runat="server" CssClass="default" Width="100">
                                                    <asp:ListItem Value="UseBIOS" />
                                                    <asp:ListItem Value="Enabled" />
                                                    <asp:ListItem Value="Disabled" />
                                                </asp:DropDownList>
                                            </td>
                                            <td><asp:Label ID="lblAdapter1MAC" runat="server" CssClass="default" /></td>
                                            <td><asp:Label ID="lblAdapter1Result" runat="server" CssClass="default" /></td>
                                        </tr>
                                        <tr>
                                            <td width="100">Click to Edit <img src="/images/arrow_green_right.gif" border="0" align="absmiddle" /></td>
                                            <td><asp:CheckBox ID="chkAdpater2" runat="server" CssClass="default" Text="Port # 2" Enabled="false" /></td>
                                            <td><asp:DropDownList ID="ddlAdapter2VLAN" runat="server" CssClass="default" Width="100" /></td>
                                            <td><asp:Label ID="lblAdapter2Status" runat="server" CssClass="default" /></td>
                                            <td>
                                                <asp:DropDownList ID="ddlAdapter2PXE" runat="server" CssClass="default" Width="100">
                                                    <asp:ListItem Value="UseBIOS" />
                                                    <asp:ListItem Value="Enabled" />
                                                    <asp:ListItem Value="Disabled" />
                                                </asp:DropDownList>
                                            </td>
                                            <td><asp:Label ID="lblAdapter2MAC" runat="server" CssClass="default" /></td>
                                            <td><asp:Label ID="lblAdapter2Result" runat="server" CssClass="default" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </asp:Panel>
                            <asp:Panel ID="panNetworkAdapterSave" runat="server" Visible="false">
                            <tr>
                                <td colspan="2" class="bigCheck" align="center"><img src="/images/bigCheck.gif" border="0" align="absmiddle" /> Virtual Connect Information has been Updated.</td>
                            </tr>
                            </asp:Panel>
                            <asp:Panel ID="panNetworkAdapterError" runat="server" Visible="false">
                            <tr>
                                <td colspan="2" class="bigError" align="center"><img src="/images/bigAlert.gif" border="0" align="absmiddle" /> There was an error querying the virtual connect module.</td>
                            </tr>
                            </asp:Panel>
                        </table>
                    </div>
                    <div id="divNexus" runat="server" visible="false" style="display:none">
                        <table cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="10"><asp:Label ID="fldNexusConfiguration" runat="server" CssClass="header" Text="Nexus Port Configuration" /></td>
                            </tr>
                            <tr>
                                <td><b>Side</b></td>
                                <td><b>Switch</b></td>
                                <td><b>Interface</b></td>
                                <td><b>Config</b></td>
                            </tr>
                            <tr>
                                <td nowrap valign="top" class="header">A:</td>
                                <td nowrap valign="top"><asp:Label ID="lblSwitchA" runat="server" CssClass="default" /></td>
                                <td nowrap valign="top"><asp:Label ID="lblInterfaceA" runat="server" CssClass="default" /></td>
                                <td valign="top"><asp:Label ID="lblConfigA" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap valign="top" class="header">B:</td>
                                <td nowrap valign="top"><asp:Label ID="lblSwitchB" runat="server" CssClass="default" /></td>
                                <td nowrap valign="top"><asp:Label ID="lblInterfaceB" runat="server" CssClass="default" /></td>
                                <td valign="top"><asp:Label ID="lblConfigB" runat="server" CssClass="default" /></td>
                            </tr>
                            <asp:Panel ID="panNexusConfiguration" runat="server" Visible="false">
                            <tr>
                                <td></td>
                                <td colspan="10"><asp:Button ID="btnNexus" runat="server" CssClass="default" Width="200" Text="Query Nexus" OnClick="btnNexus_Click" /></td>
                            </tr>
                            </asp:Panel>
                        </table>
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2">Resource Dependencies</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC">
                                        <asp:repeater ID="rptServiceRequests" runat="server">
                                            <HeaderTemplate>
                                                <tr bgcolor="#EEEEEE">
                                                    <td></td>
                                                    <td nowrap><b>Service Name</b></td>
                                                    <td nowrap><b>Progress</b></td>
                                                    <td nowrap><b>Submitted</b></td>
                                                    <td nowrap><b>Last Updated</b></td>
                                                </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <asp:Label ID="lblServiceID" runat="server" Visible="false" Text='<%#DataBinder.Eval(Container.DataItem, "serviceid").ToString() %>' />
                                                    <td title='ResourceID: <%# DataBinder.Eval(Container.DataItem, "resourceid") %>'><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="40%" nowrap title='Click here to view the details of this service'><asp:Label ID="lblDetails" runat="server" CssClass="default" Text='<%#DataBinder.Eval(Container.DataItem, "name").ToString() %>' /></td>
                                                    <td width="20%" nowrap><asp:Label ID="lblProgress" runat="server" CssClass="default" Text='<%#DataBinder.Eval(Container.DataItem, "resourceid").ToString() %>' /></td>
                                                    <td width="20%" nowrap><%# DataBinder.Eval(Container.DataItem, "submitted").ToString()%></td>
                                                    <td width="20%" nowrap><%# DataBinder.Eval(Container.DataItem, "modified").ToString()%></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:repeater>
                                        <tr id="trServiceRequests" runat="server" visible="false">
                                            <td colspan="5"><img src="/images/spacer.gif" border="0" height="1" width="25" /><img src="/images/alert.gif" border="0" align="absmiddle"> There are no resource dependencies</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2"><asp:Label ID="fldProvisioning" runat="server" CssClass="header" Text="Provisioning History" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="panProvisioning" runat="server" Visible="false">
                                        <table width="100%" cellpadding="3" cellspacing="2" border="0" style="border:solid 1px #999999" bgcolor="#f9f9f9" >
                                            <tr>
                                                <td class="bigred" colspan="2">Update Status</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">You can update the status of this device by selecting a new status and clicking <b>Update</b></td>
                                            </tr>
                                            <tr>
                                                <td nowrap>Status:<font class="required">&nbsp;*</font></td>
                                                <td width="100%">
                                                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="default">
                                                        <asp:ListItem Value="-10" Text="Disposed (Removed From Environment)" />
                                                        <asp:ListItem Value="-1" Text="Decommissioned (Remove From Inventory)" />
                                                        <asp:ListItem Value="0" Text="Arrived (Awaiting Staging and Configuration)" />
                                                        <asp:ListItem Value="1" Text="In Stock (Awaiting Burn-In and Deployment)" />
                                                        <asp:ListItem Value="2" Text="Available (Ready for On-Demand)" />
                                                        <asp:ListItem Value="10" Text="In Use (Currently Being Used)" />
                                                        <asp:ListItem Value="100" Text="Reserved (Will Be Used)" />
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr id="panStatus" runat="server" visible="false">
                                                <td nowrap>&nbsp;</td>
                                                <td width="100%"><img src="/images/alert.gif" border="0" align="absmiddle" /> Cannot change the status (asset attribute does not equal &quot;OK&quot;)</td>
                                            </tr>
                                        </table>
                                        <br />
                                        <br />
                                    </asp:Panel>
                                    <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC">
                                        <asp:repeater ID="rptHistory" runat="server">
                                            <HeaderTemplate>
                                                <tr bgcolor="#EEEEEE">
                                                    <td></td>
                                                    <td nowrap><b>Status Changed To</b></td>
                                                    <td nowrap><b>Status Changed On</b></td>
                                                    <td nowrap><b>Status Changed By</b></td>
                                                    <td nowrap><b>Device Name</b></td>
                                                </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="25%"><%# DataBinder.Eval(Container.DataItem, "statusname")%></td>
                                                    <td width="25%"><%# DataBinder.Eval(Container.DataItem, "datestamp")%></td>
                                                    <td width="25%"><%# oUser.GetFullName(Int32.Parse(DataBinder.Eval(Container.DataItem, "userid").ToString())) %></td>
                                                    <td width="25%"><%# DataBinder.Eval(Container.DataItem, "name")%></td>
                                                </tr>
                                            </ItemTemplate>
                                            <AlternatingItemTemplate>
                                                <tr bgcolor="#F6F6F6">
                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="25%"><%# DataBinder.Eval(Container.DataItem, "statusname")%></td>
                                                    <td width="25%"><%# DataBinder.Eval(Container.DataItem, "datestamp")%></td>
                                                    <td width="25%"><%# oUser.GetFullName(Int32.Parse(DataBinder.Eval(Container.DataItem, "userid").ToString())) %></td>
                                                    <td width="25%"><%# DataBinder.Eval(Container.DataItem, "name")%></td>
                                                </tr>
                                            </AlternatingItemTemplate>
                                        </asp:repeater>
                                        <tr>
                                            <td colspan="5"><asp:Label ID="lblHistory" runat="server" CssClass="default" Visible="false" Text="<img src='/images/spacer.gif' border='0' height='1' width='25' /><img src='/images/alert.gif' border='0' align='absmiddle'> There is no history of this asset" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2">Administration</td>
                            </tr>
                            <tr>
                                <td nowrap colspan="2">
                                    <asp:Panel ID="panAdministration" runat="server" Visible="false">
                                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                                            <tr>
                                                <td colspan="2"><asp:Label ID="lblAdministration" runat="server" CssClass="header" /></td>
                                            </tr>
		                                    <tr> 
		                                        <td colspan="2"><b>Asset Order Information</b></td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>OrderID:</td>
		                                        <td width="100%"><asp:Label ID="lblAssetOrderID" runat="server" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>Project:</td>
		                                        <td width="100%"><asp:Label ID="lblAssetOrderProject" runat="server" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>Resiliency:</td>
		                                        <td width="100%"><asp:Label ID="lblAssetOrderResiliency" runat="server" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>Location:</td>
		                                        <td width="100%"><asp:Label ID="lblAssetOrderLocation" runat="server" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>Model:</td>
		                                        <td width="100%"><asp:Label ID="lblAssetOrderModel" runat="server" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2">&nbsp;</td>
		                                    </tr>
		                                    <tr> 
		                                        <td colspan="2"><b>Add to ZEUS Table</b></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2"><asp:Button ID="btnZeus" runat="server" CssClass="default" Width="125" OnClick="btnZeus_Click" Text="Add to Zeus Table" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2">&nbsp;</td>
		                                    </tr>
		                                    <tr> 
		                                        <td colspan="2"><b>Add Computer to Altiris</b></td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>RDP Web Service URL (Schedule):</td>
		                                        <td width="100%">
		                                            <asp:DropDownList ID="ddlAltirisSchedule" runat="server" CssClass="default">
		                                                <asp:ListItem Value="http://OHCINUTL1009/dsjob/dsjob_fromurl.asmx" />
		                                                <asp:ListItem Value="http://OHCLEUTL100M/dsjob/dsjob_fromurl.asmx" />
		                                            </asp:DropDownList>
		                                        </td>
		                                    </tr>
		                                    <tr> 
		                                        <td colspan="2"><b>Add Job to Computer in Altiris</b></td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>Altiris Job:</td>
		                                        <td width="100%">
		                                            <asp:DropDownList ID="ddlAltirisJob" runat="server" CssClass="default">
		                                                <asp:ListItem Text="None" Value="" />
		                                                <asp:ListItem Value="netZEUS for Windows Boot Option" />
		                                                <asp:ListItem Value="RHEL3 x86 Boot Option" />
		                                                <asp:ListItem Value="RHEL4 x64 Boot Option" />
		                                                <asp:ListItem Value="RHEL4 x86 Boot Option" />
		                                                <asp:ListItem Value="RHEL5 x64 Boot Option" />
		                                                <asp:ListItem Value="RHEL5 x86 Boot Option" />
		                                                <asp:ListItem Value="VMware ESX 3.5 U3 Boot Option" />
		                                            </asp:DropDownList>
		                                        </td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>RDP Web Service URL (Computer):</td>
		                                        <td width="100%">
		                                            <asp:DropDownList ID="ddlAltirisComputer" runat="server" CssClass="default">
		                                                <asp:ListItem Value="http://OHCINUTL1009/Altiris.ASDK.DS/ComputerManagementService.asmx" />
		                                                <asp:ListItem Value="http://OHCLEUTL100M/Altiris.ASDK.DS/ComputerManagementService.asmx" />
		                                            </asp:DropDownList>
		                                        </td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2"><asp:Button ID="btnAltiris" runat="server" CssClass="default" Width="125" OnClick="btnAltiris_Click" Text="Register in Altiris" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2">&nbsp;</td>
		                                    </tr>
		                                    <tr> 
		                                        <td colspan="2"><b>Recent Asset Orders (past 90 days)</b></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2">
                                                    <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC">
                                                        <asp:repeater ID="rptAssetOrders" runat="server">
                                                            <HeaderTemplate>
                                                                <tr bgcolor="#EEEEEE">
                                                                    <td></td>
                                                                    <td nowrap><b>Order ID</b></td>
                                                                    <td nowrap><b>Request ID</b></td>
                                                                    <td nowrap><b>Order Type</b></td>
                                                                    <td nowrap><b>Service</b></td>
                                                                    <td nowrap><b>Resource Assigned</b></td>
                                                                    <td nowrap><b>Last Modified</b></td>
                                                                    <td nowrap><b>Status</b></td>
                                                                </tr>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                                    <td width="10%"><%# DataBinder.Eval(Container.DataItem, "orderid")%></td>
                                                                    <td width="15%"><asp:Label ID="lblRequest" runat="server" CssClass="default" ToolTip='<%# DataBinder.Eval(Container.DataItem, "resourceid")%>' Text='<%#DataBinder.Eval(Container.DataItem, "requestid").ToString() + "-" + DataBinder.Eval(Container.DataItem, "serviceid").ToString() + "-" + DataBinder.Eval(Container.DataItem, "number").ToString() %>' /></td>
                                                                    <td width="15%"><%# DataBinder.Eval(Container.DataItem, "OrderType")%></td>
                                                                    <td width="20%"><%# DataBinder.Eval(Container.DataItem, "name")%></td>
                                                                    <td width="15%"><%# DataBinder.Eval(Container.DataItem, "username")%></td>
                                                                    <td width="15%" nowrap><%# DataBinder.Eval(Container.DataItem, "modified")%></td>
                                                                    <td width="10%"><asp:Label ID="lblStatus" runat="server" CssClass="default" Text='<%# DataBinder.Eval(Container.DataItem, "status")%>' />&nbsp;&nbsp;&nbsp;[<asp:LinkButton ID="btnDeleteOrder" runat="server" Text="Cancel" ToolTip='<%# DataBinder.Eval(Container.DataItem, "orderid")%>' OnClick="btnDeleteOrder_Click" />]</td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:repeater>
                                                        <tr>
                                                            <td colspan="8"><asp:Label ID="lblAssetOrders" runat="server" CssClass="default" Visible="false" Text="<img src='/images/spacer.gif' border='0' height='1' width='25' /><img src='/images/alert.gif' border='0' align='absmiddle'> There are no recent orders for this asset" /></td>
                                                        </tr>
                                                    </table>
		                                        </td>
		                                    </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="panDenied" runat="server" Visible="false">
        <br />
            <table width="100%" cellpadding="0" cellspacing="5" border="0">
                <tr>
                    <td rowspan="2"><img src="/images/ico_error.gif" border="0" align="absmiddle" /></td>
                    <td class="header" width="100%" valign="bottom">Access Denied</td>
                </tr>
                <tr>
                    <td width="100%" valign="top">You do not have sufficient permission to view this page.</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td width="100%">If you think you should have rights to view it, please contact your ClearView administrator.</td>
                </tr>
            </table>
        <p>&nbsp;</p>
    </asp:Panel>
<asp:HiddenField ID="hdnTab" runat="server" />
<asp:HiddenField ID="hdnModel" runat="server" />
<asp:HiddenField ID="hdnEnvironment" runat="server" />
<asp:HiddenField ID="hdnPNC" runat="server" />
</asp:Content>
