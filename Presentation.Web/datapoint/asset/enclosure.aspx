<%@ Page Language="C#" MasterPageFile="~/datapoint.Master" AutoEventWireup="True" CodeBehind="enclosure.aspx.cs" Inherits="NCC.ClearView.Presentation.Web.enclosure" Title="Untitled Page" %>
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
        <tr>
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
        <tr>
            <td nowrap valign="top"><asp:Label ID="lblHeaderSub" runat="server" CssClass="default" /></td>
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
                                <td width="100%"><asp:Label ID="lblName" runat="server" CssClass="default" /><asp:TextBox ID="txtName" runat="server" CssClass="default" MaxLength="100" Width="300" /></td>
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
                             <tr>
                                <td nowrap><asp:Label ID="fldAssetAttributeComment" runat="server" CssClass="default" Text="Asset Attribute Comment:" /></td>
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
                                <td nowrap><asp:Label ID="fldPlatformVLAN" runat="server" CssClass="default" Text="Original VLAN:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformVLAN" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformVLAN" runat="server" CssClass="default" MaxLength="4" Width="50" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformOA" runat="server" CssClass="default" Text="Onboard Administrator IP:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformOA" runat="server" CssClass="default" /><asp:TextBox ID="txtPlatformOA" runat="server" CssClass="default" MaxLength="50" Width="300" /> <asp:Button ID="btnOA" runat="server" CssClass="default" Width="75" Text="Open" Visible="false" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformResiliency" runat="server" CssClass="default" Text="Resiliency:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformResiliency" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformResiliency" runat="server" CssClass="default" Width="400" /></td>
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
                            <tr>
                                <td nowrap><asp:Label ID="fldRedeployBlades" runat="server" CssClass="default" Text="Redeploy Blades:" /></td>
                                <td width="100%"><asp:Button ID="btnRedeployBlades" runat="server" CssClass="default" Text="Execute" Width="75" OnClick="btnRedeployBlades_Click" /></td>
                            </tr>
                            <tr>
                                <td nowrap></td>
                                <td width="100%" class="required"><b>NOTE:</b> If you want to redeploy the enclosure AND blades, redeploy the blades first, and then the enclosure.</td>
                            </tr>
                        </table>
                    </div>
                    <div style="display:none">
                    <table id="tblLocation" width="100%" cellpadding="2" cellspacing="5" border="0" align="center">
                        <tr>
                            <td class="header" colspan="2"><asp:Label ID="fldLocation" runat="server" CssClass="header" Text="Location Information" /></td>
                        </tr>
                        <tr> 
                            <td nowrap>
                                <asp:Label ID="lblLocation" runat="server" CssClass="default" Text="Address :" />
                            </td>
                            <td width="100%">
                                <asp:TextBox ID="txtLocation" CssClass="lightdefault" runat="server"  Width="500" ReadOnly="true" />
                                <input type="hidden" id="hdnLocationId" runat="server" />
                                &nbsp
                                <asp:Button ID="btnSelectLocation" runat="server" Text="..." CssClass="default"  Width="25"   />
                            </td>
                        </tr>
                        
		                <tr> 
                            <td nowrap>
                                <asp:Label ID="lblRoom" runat="server" CssClass="default" Text="Room :" />
                            </td>
                            <td width="100%" >
                                <asp:TextBox ID="txtRoom" CssClass="lightdefault" runat="server"  Width="250" ReadOnly="true" />
                            </td>
                        </tr>
                        <tr> 
                            <td nowrap>
                                <asp:Label ID="lblZone" runat="server" CssClass="default" Text="Zone :" />
                            </td>
                            <td width="100%" >
                                <asp:TextBox ID="txtZone" CssClass="lightdefault" runat="server"  Width="250" ReadOnly="true" />
                            </td>
                        </tr>
                        <tr>
                            <td nowrap>
                                <asp:Label ID="lblRack" runat="server" CssClass="default" Text="Rack :" />
                            </td>
                            <td width="100%">
                                <asp:TextBox ID="txtRack" CssClass="lightdefault" runat="server"  Width="250" ReadOnly="true" />
                                <asp:HiddenField ID="hdnRackId" runat="server" />
                            </td>                            
                         </tr>
                         <tr>
                            <td nowrap >
                                <asp:Label ID="lblRackPosition" runat="server" CssClass="default" Text="Rack Position :" />
                            </td>                 
                            <td width="100%"">
                                <asp:TextBox ID="txtRackPosition" CssClass="default" runat="server"  MaxLength="10" Width="100" />
                                <asp:Label ID="lblRackPositionValue" runat="server" CssClass="default" />&nbsp;&nbsp;&nbsp;
                                <span class="footer">Examples: 10,&nbsp;&nbsp;10-11,&nbsp;&nbsp;10-12</span>
                            </td>
                         </tr>
                         <tr>
                            <td colspan="2">&nbsp;</td>
                         </tr>
                           <tr id="panOldLocationInfo" runat="server" visible="false">
                                <td colspan="2" >
                                    <table id="tblOldlocation" width="100%" cellpadding="0" cellspacing="5" border="0" style="border:solid 1px #999999" bgcolor="#f9f9f9">
                                        <tr>
                                            <td rowspan="3" valign="top"><img src="/images/hugeAlert.gif" border="0" align="absmiddle" /></td>
                                            <td class="header" width="100%" valign="bottom">Old Location Information</td>
                                        </tr>
                                        <tr>
                                            <td width="100%" valign="top">This information should be used as a reference and may be inaccurate.  This information can not be updated.</td>
                                        </tr>
                                        <tr>
                                            <td width="100%">
                                                <table cellpadding="3" cellspacing="2" border="0">
                                                    <tr>
                                                        <td valign="top">Location :</td>
                                                        <td width="100%" valign="top"><asp:Label ID="lblOldlocation" runat="server" CssClass="default" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="top">Room :</td>
                                                        <td width="100%" valign="top"><asp:Label ID="lblOldRoom" runat="server" CssClass="default" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="top">Rack :</td>
                                                        <td width="100%" valign="top"><asp:Label ID="lblOldRack" runat="server" CssClass="default" /></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                         </table>
                     
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2"><asp:Label ID="fldVC" runat="server" CssClass="header" Text="Virtual Connect IPs" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC">
                                        <asp:repeater ID="rptVirtualConnect" runat="server">
                                            <HeaderTemplate>
                                                <tr bgcolor="#EEEEEE">
                                                    <td></td>
                                                    <td nowrap><b>IP Address</b></td>
                                                    <td nowrap><b>Last Updated</b></td>
                                                </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="50%"><a href="javascript:void(0);" onclick="OpenNewWindowMenu('https://<%# DataBinder.Eval(Container.DataItem, "virtual_connect")%>', '800', '600');"><%# DataBinder.Eval(Container.DataItem, "virtual_connect")%></a></td>
                                                    <td width="50%"><%# DataBinder.Eval(Container.DataItem, "modified")%></td>
                                                </tr>
                                            </ItemTemplate>
                                            <AlternatingItemTemplate>
                                                <tr bgcolor="#F6F6F6">
                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="50%"><a href="javascript:void(0);" onclick="OpenNewWindowMenu('https://<%# DataBinder.Eval(Container.DataItem, "virtual_connect")%>', '800', '600');"><%# DataBinder.Eval(Container.DataItem, "virtual_connect")%></a></td>
                                                    <td width="50%"><%# DataBinder.Eval(Container.DataItem, "modified")%></td>
                                                </tr>
                                            </AlternatingItemTemplate>
                                        </asp:repeater>
                                        <tr>
                                            <td colspan="5"><asp:Label ID="lblVirtualConnect" runat="server" CssClass="default" Visible="false" Text="<img src='/images/spacer.gif' border='0' height='1' width='25' /><img src='/images/alert.gif' border='0' align='absmiddle'> There are no virtual connect IPs" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><asp:Button ID="btnVC" runat="server" CssClass="default" Width="100" Text="Manage" Visible="false" /></td>
                            </tr>
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
                                <td class="header" colspan="2">Blades</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC">
                                        <asp:repeater ID="rptBlades" runat="server">
                                            <HeaderTemplate>
                                                <tr bgcolor="#EEEEEE">
                                                    <td></td>
                                                    <td nowrap><b>Serial Number</b></td>
                                                    <td nowrap><b>Asset Tag</b></td>
                                                    <td nowrap><b>Slot</b></td>
                                                    <td nowrap><b>Spare</b></td>
                                                    <td nowrap><b>Server Name</b></td>
                                                    <td nowrap><b>Status</b></td>
                                                </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr<%# (intHighlight.ToString() == DataBinder.Eval(Container.DataItem, "assetid").ToString() ? " bgcolor=\"#99FF99\"" : "")%>>
                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="20%"><a href="javascript:void(0);" onclick="OpenNewWindowMenu('/datapoint/asset/blade.aspx?t=serial&q=<%# oFunction.encryptQueryString(DataBinder.Eval(Container.DataItem, "serial").ToString())%>&id=<%# oFunction.encryptQueryString(DataBinder.Eval(Container.DataItem, "assetid").ToString())%>');"><%# DataBinder.Eval(Container.DataItem, "serial")%></a></td>
                                                    <td width="20%"><%# DataBinder.Eval(Container.DataItem, "asset")%></td>
                                                    <td width="10%"><%# DataBinder.Eval(Container.DataItem, "slot")%><%# DataBinder.Eval(Container.DataItem, "slot_full_height")%></td>
                                                    <td width="10%"><%# (DataBinder.Eval(Container.DataItem, "spare").ToString() == "1" ? "Yes" : "No")%></td>
                                                    <td width="20%"><a href="javascript:void(0);" onclick="OpenNewWindowMenu('/datapoint/asset/server.aspx?q=<%# oFunction.encryptQueryString(DataBinder.Eval(Container.DataItem, "name").ToString())%>');"><%# DataBinder.Eval(Container.DataItem, "name")%></a></td>
                                                    <td width="20%"><%# DataBinder.Eval(Container.DataItem, "statusname")%></td>
                                                </tr>
                                            </ItemTemplate>
                                            <AlternatingItemTemplate>
                                                <tr<%# (intHighlight.ToString() == DataBinder.Eval(Container.DataItem, "assetid").ToString() ? " bgcolor=\"#99FF99\"" : "")%> bgcolor="#F6F6F6">
                                                    <td><img src="/images/spacer.gif" border="0" width="15" height="1" /></td>
                                                    <td width="20%"><a href="javascript:void(0);" onclick="OpenNewWindowMenu('/datapoint/asset/blade.aspx?t=serial&q=<%# oFunction.encryptQueryString(DataBinder.Eval(Container.DataItem, "serial").ToString())%>&id=<%# oFunction.encryptQueryString(DataBinder.Eval(Container.DataItem, "assetid").ToString())%>');"><%# DataBinder.Eval(Container.DataItem, "serial")%></a></td>
                                                    <td width="20%"><%# DataBinder.Eval(Container.DataItem, "asset")%></td>
                                                    <td width="10%"><%# DataBinder.Eval(Container.DataItem, "slot")%><%# DataBinder.Eval(Container.DataItem, "slot_full_height")%></td>
                                                    <td width="10%"><%# (DataBinder.Eval(Container.DataItem, "spare").ToString() == "1" ? "Yes" : "No")%></td>
                                                    <td width="20%"><a href="javascript:void(0);" onclick="OpenNewWindowMenu('/datapoint/asset/server.aspx?q=<%# oFunction.encryptQueryString(DataBinder.Eval(Container.DataItem, "name").ToString())%>');"><%# DataBinder.Eval(Container.DataItem, "name")%></a></td>
                                                    <td width="20%"><%# DataBinder.Eval(Container.DataItem, "statusname")%></td>
                                                </tr>
                                            </AlternatingItemTemplate>
                                        </asp:repeater>
                                        <tr>
                                            <td colspan="5"><asp:Label ID="lblBlades" runat="server" CssClass="default" Visible="false" Text="<img src='/images/spacer.gif' border='0' height='1' width='25' /><img src='/images/alert.gif' border='0' align='absmiddle'> There are no blades" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2">Network Adapter Configuration</td>
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
<asp:HiddenField ID="hdnAddress" runat="server" />
<asp:HiddenField ID="hdnEnvironment" runat="server" />
</asp:Content>
