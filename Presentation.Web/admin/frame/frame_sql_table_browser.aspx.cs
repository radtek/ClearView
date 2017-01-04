using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using NCC.ClearView.Application.Core;
using Microsoft.ApplicationBlocks.Data;

namespace NCC.ClearView.Presentation.Web
{
    public partial class frame_sql_table_browser : BasePage
    {
        private string dsn = ConfigurationManager.ConnectionStrings[ConfigurationManager.AppSettings["DSN"]].ConnectionString;
        protected int intProfile;
        protected Forecast oForecast;
        private TreeNode oSelected;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["adminid"] != null && Request.Cookies["adminid"].Value != "")
                intProfile = Int32.Parse(Request.Cookies["adminid"].Value);
            else
                Reload();
            oForecast = new Forecast(intProfile, dsn);
            if (Request.QueryString["id"] != null && Request.QueryString["id"] != "")
                lblId.Text = Request.QueryString["id"];
            string strControl = "";
            string strControlText = "";
            if (Request.QueryString["control"] != null)
                strControl = Request.QueryString["control"];
            if (Request.QueryString["controltext"] != null)
                strControlText = Request.QueryString["controltext"];
            btnNone.Attributes.Add("onclick", "return Reset('None','" + txtName.ClientID + "');");
            btnSave.Attributes.Add("onclick", "return Update('" + txtName.ClientID + "','" + strControlText + "');");
            btnClose.Attributes.Add("onclick", "return HidePanel();");
            LoadTree();
        }
        private void LoadTree()
        {
            PopulateTree();
            oTreeview.CollapseAll();
            if (oSelected == null)
                txtName.Text = "None";
            else
            {
                while (oSelected != null)
                {
                    oSelected.Expand();
                    oSelected = oSelected.Parent;
                }
            }
        }
        private void PopulateTree()
        {
            DataSet ds = SqlHelper.ExecuteDataset(dsn, CommandType.Text, "select name from sys.tables order by name");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                TreeNode oNode = new TreeNode();
                oNode.Text = dr["name"].ToString();
                oNode.ToolTip = dr["name"].ToString();
                oNode.NavigateUrl = "javascript:Select('" + dr["name"].ToString() + "','" + txtName.ClientID + "');";
                oTreeview.Nodes.Add(oNode);
                if (dr["name"].ToString() == lblId.Text)
                {
                    oSelected = oNode;
                    txtName.Text = dr["name"].ToString();
                }
            }
        }
        private void Reload()
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "reload", "<script type=\"text/javascript\">window.top.location.reload();<" + "/" + "script>");
        }
    }
}
