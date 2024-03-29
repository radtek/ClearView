<%@ Page Language="C#" MasterPageFile="~/datapoint.Master" AutoEventWireup="true" CodeBehind="workstation_vmware.aspx.cs" Inherits="NCC.ClearView.Presentation.Web.workstation_vmware" Title="Untitled Page" %>
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
                                <td width="100%"><asp:Label ID="lblName" runat="server" CssClass="default" /><asp:TextBox ID="txtName" runat="server" CssClass="default" MaxLength="100" Width="300" /> <asp:Button ID="btnName" runat="server" CssClass="default" Width="75" Text="Change" Visible="false" /></td>
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
                                <td nowrap><asp:Label ID="fldPlatformOS" runat="server" CssClass="default" Text="Device OS:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformOS" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformOS" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformServicePack" runat="server" CssClass="default" Text="Service Pack:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformServicePack" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformServicePack" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformDomain" runat="server" CssClass="default" Text="Domain:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformDomain" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformDomain" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformHDD" runat="server" CssClass="default" Text="HDD:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformHDD" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformHDD" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldPlatformRam" runat="server" CssClass="default" Text="Ram:" /></td>
                                <td width="100%"><asp:Label ID="lblPlatformRam" runat="server" CssClass="default" /><asp:DropDownList ID="ddlPlatformRam" runat="server" CssClass="default" Width="400" /></td>
                            </tr>
                            <tr>
                                <td nowrap>Asset Status:</td>
                                <td width="100%"><asp:Label ID="lblStatus" runat="server" CssClass="default" /></td>
                            </tr>
                        </table>
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2"><asp:Label ID="fldHostQuery" runat="server" CssClass="header" Text="Guest Information" /></td>
                            </tr>
                            <asp:Panel ID="panGuestQuery" runat="server" Visible="false">
                            <tr>
                                <td colspan="2"><asp:Button ID="btnGuestQuery" runat="server" CssClass="default" Width="200" Text="Query Guest Information" OnClick="btnGuestQuery_Click" /></td>
                            </tr>
                            <asp:Panel ID="panGuestYes" runat="server" Visible="false">
                            <tr>
                                <td nowrap>Virtual Center Server:</td>
                                <td width="100%"><asp:Label ID="lblVirtualCenter" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>DataCenter:</td>
                                <td width="100%"><asp:Label ID="lblDataCenter" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap><asp:Label ID="fldHostName" runat="server" CssClass="default" Text="Host Name:" /></td>
                                <td width="100%"><asp:Label ID="lblHostName" runat="server" CssClass="default" /><asp:TextBox ID="txtHostName" runat="server" CssClass="default" MaxLength="100" Width="400" /> <asp:Button ID="btnHostName" runat="server" CssClass="default" Width="75" Text="Lookup" Visible="false" /></td>
                            </tr>
                            <tr>
                                <td nowrap>Guest State:</td>
                                <td width="100%"><asp:Label ID="lblGuestState" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>IP Address:</td>
                                <td width="100%"><asp:Label ID="lblIPAddress" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>MAC Address:</td>
                                <td width="100%"><asp:Label ID="lblMACAddress" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>Network:</td>
                                <td width="100%"><asp:Label ID="lblNetwork" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>RAM (in MB):</td>
                                <td width="100%"><asp:Label ID="lblRAM" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>Hard Drive(s):</td>
                                <td width="100%"><asp:Label ID="lblHDD" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>CPUs:</td>
                                <td width="100%"><asp:Label ID="lblCPUs" runat="server" CssClass="default" /></td>
                            </tr>
                            <tr>
                                <td nowrap>Overall Status:</td>
                                <td width="100%"><asp:Label ID="lblOverallStatus" runat="server" CssClass="default" /></td>
                            </tr>
                            </asp:Panel>
                            <asp:Panel ID="panGuestNo" runat="server" Visible="false">
                            <tr>
                                <td colspan="2"><img src="/images/bigError.gif" border="0" align="absmiddle" /> Could not locate the guest.</td>
                            </tr>
                            </asp:Panel>
                            </asp:Panel>
                        </table>
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2">Account Information</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" cellpadding="4" cellspacing="0" border="0" style="border:solid 1px #CCCCCC">
                                        <tr bgcolor="#EEEEEE">
                                            <td><b><u>Username:</u></b></td>
                                            <td align="center"><b><u>Remote Desktop:</u></b></td>
                                            <td align="center"><b><u>Administrator:</u></b></td>
                                        </tr>
                                        <asp:repeater ID="rptAccounts" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td valign="top"><%# oUser.GetFullName(Int32.Parse(DataBinder.Eval(Container.DataItem, "userid").ToString())) %> (<%# oUser.GetName(Int32.Parse(DataBinder.Eval(Container.DataItem, "userid").ToString()))%>)</td>
                                                    <td valign="top" align="center"><%# "<img src=\"/images/" + (DataBinder.Eval(Container.DataItem, "remote").ToString() == "1" ? "check" : "cancel") + ".gif\" border=\"0\" align=\"absmiddle\"/>"%></td>
                                                    <td valign="top" align="center"><%# "<img src=\"/images/" + (DataBinder.Eval(Container.DataItem, "admin").ToString() == "1" ? "check" : "cancel") + ".gif\" border=\"0\" align=\"absmiddle\"/>"%></td>
                                                </tr>
                                            </ItemTemplate>
                                            <AlternatingItemTemplate>
                                                <tr bgcolor="F6F6F6">
                                                    <td valign="top"><%# oUser.GetFullName(Int32.Parse(DataBinder.Eval(Container.DataItem, "userid").ToString())) %> (<%# oUser.GetName(Int32.Parse(DataBinder.Eval(Container.DataItem, "userid").ToString()))%>)</td>
                                                    <td valign="top" align="center"><%# "<img src=\"/images/" + (DataBinder.Eval(Container.DataItem, "remote").ToString() == "1" ? "check" : "cancel") + ".gif\" border=\"0\" align=\"absmiddle\"/>" %></td>
                                                    <td valign="top" align="center"><%# "<img src=\"/images/" + (DataBinder.Eval(Container.DataItem, "admin").ToString() == "1" ? "check" : "cancel") + ".gif\" border=\"0\" align=\"absmiddle\"/>"%></td>
                                                </tr>
                                            </AlternatingItemTemplate>
                                        </asp:repeater>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Label ID="lblNone" runat="server" CssClass="default" Visible="false" Text="<img src='/images/spacer.gif' border='0' height='1' width='25' /><img src='/images/alert.gif' border='0' align='absmiddle'> You have not added any accounts to this request" />
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
                                                    <asp:Label ID="lblRequestID" runat="server" Visible="false" Text='<%#DataBinder.Eval(Container.DataItem, "requestid").ToString() %>' />
                                                    <asp:Label ID="lblServiceID" runat="server" Visible="false" Text='<%#DataBinder.Eval(Container.DataItem, "serviceid").ToString() %>' />
                                                    <asp:Label ID="lblNumber" runat="server" Visible="false" Text='<%#DataBinder.Eval(Container.DataItem, "number").ToString() %>' />
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
                                    </asp:Panel>
                                    <p><asp:Button ID="btnExecute" runat="server" CssClass="default" Width="125" Text="View Execution" /></p>
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
		                                        <td colspan="2">
		                                            <table width="100%" cellpadding="4" cellspacing="3" border="0">
		                                                <%=strAdministration %>
		                                            </table>
		                                        </td>
		                                    </tr>
		                                    <tr> 
		                                        <td colspan="2"><b>Change Step</b></td>
		                                    </tr>
		                                    <tr>
		                                        <td nowrap>Step:</td>
		                                        <td width="100%"><asp:TextBox ID="txtStep" runat="server" CssClass="default" Width="100" MaxLength="10" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2"><asp:CheckBox ID="chkStep" runat="server" CssClass="default" Text="Clear Errors" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2"><asp:CheckBox ID="chkStepVMWare" runat="server" CssClass="default" Text="Delete VMware Information (Step should be set to 2)" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2"><asp:Button ID="btnStep" runat="server" CssClass="default" Width="75" OnClick="btnStep_Click" Text="Go" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2">&nbsp;</td>
		                                    </tr>
		                                    <tr> 
		                                        <td colspan="2"><b>Show Output</b></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2"><asp:Button ID="btnOutput" runat="server" CssClass="default" Width="75" OnClick="btnOutput_Click" Text="Go" /></td>
		                                    </tr>
		                                    <tr>
		                                        <td colspan="2">&nbsp;</td>
		                                    </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="display:none">
                        <table width="100%" cellpadding="5" cellspacing="2" border="0">
                            <tr>
                                <td class="header" colspan="2">Network Adapter Configuration</td>
                            </tr>
                            <tr>
                                <td nowrap>Model:</td>
                                <td width="100%"><asp:Label ID="Label4" runat="server" CssClass="default" MaxLength="100" Width="400" /></td>
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
<asp:Label ID="lblWorkstation" runat="server" Visible="false" />
</asp:Content>
