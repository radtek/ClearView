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
using System.Text;

namespace NCC.ClearView.Presentation.Web
{
    public partial class fore_mine : System.Web.UI.UserControl
    {
        private string dsn = ConfigurationManager.ConnectionStrings[ConfigurationManager.AppSettings["DSN"]].ConnectionString;
        protected int intEnvironment = Int32.Parse(ConfigurationManager.AppSettings["Environment"]);

        protected DataSet ds;
        protected Pages oPage;
        protected int intViewPage = Int32.Parse(ConfigurationManager.AppSettings["ForecastEdit"]);
        protected string strRedirect = "";
        protected int intProfile;
        protected int intPage = 0;
        protected int intApplication = 0;
        protected int intRecords = 20;
        protected int intRecordStart = 1;
        protected Forecast oForecast;
        protected LinkButton oButton;
        protected string strTotals = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            intProfile = Int32.Parse(Request.Cookies["profileid"].Value);
            oForecast = new Forecast(intProfile, dsn);
            oPage = new Pages(intProfile, dsn);
            if (Request.QueryString["pageid"] != null && Request.QueryString["pageid"] != "")
                intPage = Int32.Parse(Request.QueryString["pageid"]);
            if (Request.Cookies["application"] != null && Request.Cookies["application"].Value != "")
                intApplication = Int32.Parse(Request.Cookies["application"].Value);
            strRedirect = oPage.GetFullLink(intViewPage);
            lblTitle.Text = oPage.Get(intPage, "title");
            lblPage.Text = "1";
            lblSort.Text = "";
            if (Request.QueryString["page"] != null && Request.QueryString["page"] != "")
                lblPage.Text = Request.QueryString["page"];
            if (Request.QueryString["sort"] != null && Request.QueryString["sort"] != "")
                lblSort.Text = Request.QueryString["sort"];
            lblTopPaging.Text = "";
            //try
            //{
            LoadPaging(Int32.Parse(lblPage.Text), lblSort.Text);
            //}
            //catch
            //{
            //    LoadPaging(1, "");
            //}
        }

        private void LoopRepeater(string _sort, int _start)
        {
            ds = oForecast.Gets(intProfile);
            double dblCount1 = 0;
           
            DataColumn dc1 = new DataColumn("implementation", System.Type.GetType("System.DateTime"));
            ds.Tables[0].Columns.Add(dc1);
            DataColumn dc2 = new DataColumn("quantity", System.Type.GetType("System.Int32"));
            ds.Tables[0].Columns.Add(dc2);
            DataColumn dc3 = new DataColumn("amp", System.Type.GetType("System.Double"));
            ds.Tables[0].Columns.Add(dc3);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                int intForecast = Int32.Parse(dr["id"].ToString());
                DataSet dsAnswers = oForecast.GetAnswers(intForecast);
                DateTime _date = DateTime.MaxValue;
                foreach (DataRow drAnswer in dsAnswers.Tables[0].Rows)
                {
                    //bool boolOverride = (dr["override"].ToString() == "1");
                    if (drAnswer["implementation"].ToString() != "")
                    {
                        DateTime _commitment = DateTime.Parse(drAnswer["implementation"].ToString());
                        if (_commitment < _date)
                            _date = _commitment;
                    }
                    double dblQuantity = double.Parse(drAnswer["quantity"].ToString()) + double.Parse(drAnswer["recovery_number"].ToString());
                    dblCount1 += dblQuantity;
                }
                //dblCount2 += dblCount1;
                dr["implementation"] = _date.ToShortDateString();
                dr["quantity"] = dblCount1.ToString();
                dblCount1 = 0.00;
            }



            if (_start > ds.Tables[0].Rows.Count)
                _start = 0;
            intRecordStart = _start + 1;
            DataView dv = ds.Tables[0].DefaultView;
            if (Request.QueryString["sort"] != null)
                dv.Sort = Request.QueryString["sort"];
            int intCount = _start + intRecords;
            if (dv.Count < intCount)
                intCount = dv.Count;
            int ii = 0;
            lblRecords.Text = "Models " + intRecordStart.ToString() + " - " + intCount.ToString() + " of " + dv.Count.ToString();
            for (ii = 0; ii < _start; ii++)
                dv[0].Delete();
            int intTotalCount = (dv.Count - intRecords);
            for (ii = 0; ii < intTotalCount; ii++)
                dv[intRecords].Delete();
            rptView.DataSource = dv;
            rptView.DataBind();
            Projects oProject = new Projects(intProfile, dsn);
            Requests oRequest = new Requests(intProfile, dsn);
            ProjectsPending oProjectPending = new ProjectsPending(intProfile, dsn, intEnvironment);
            Users oUser = new Users(intProfile, dsn);
            StatusLevels oStatusLevel = new StatusLevels();
            //foreach (RepeaterItem ri in rptView.Items)
            //{
            //    Label lblProject = (Label)ri.FindControl("lblProject");
            //    int intProject = Int32.Parse(lblProject.Text);
            //    Label lblRequest = (Label)ri.FindControl("lblRequest");
            //    int intRequest = Int32.Parse(lblRequest.Text);
            //    Label lblLead = (Label)ri.FindControl("lblLead");
            //    lblLead.Text = oUser.GetFullName(oRequest.GetUser(intRequest));
            //    if (intProject > 0)
            //    {
            //        //lblLead.Text = oUser.GetFullName(Int32.Parse(oProject.Get(intProject, "lead")));
            //        ds = oForecast.GetProject(intProject);
            //    }
            //    else
            //    {
            //        //lblLead.Text = oUser.GetFullName(Int32.Parse(oProjectPending.GetRequest(intRequest, "lead")));
            //        ds = oForecast.GetRequest(intRequest);
            //    }
            //    if (lblLead.Text == "")
            //        lblLead.Text = "---";
            //    double dblAmp = 0.00;
            //    if (ds.Tables[0].Rows.Count > 0)
            //    {
            //        Label lblCount = (Label)ri.FindControl("lblCount");
            //        Label lblDate = (Label)ri.FindControl("lblDate");
            //        double dblCount2 = 0;
            //        int intForecast = Int32.Parse(ds.Tables[0].Rows[0]["id"].ToString());
            //        Platforms oPlatform = new Platforms(intProfile, dsn);
            //        ModelsProperties oModelsProperties = new ModelsProperties(intProfile, dsn);
            //        ds = oForecast.GetAnswers(intForecast);
            //        DateTime _date = DateTime.MaxValue;
            //        foreach (DataRow dr in ds.Tables[0].Rows)
            //        {
            //            //bool boolOverride = (dr["override"].ToString() == "1");
            //            if (dr["implementation"].ToString() != "")
            //            {
            //                DateTime _commitment = DateTime.Parse(dr["implementation"].ToString());
            //                if (_commitment < _date)
            //                    _date = _commitment;
            //            }
            //            double dblQuantity = double.Parse(dr["quantity"].ToString()) + double.Parse(dr["recovery_number"].ToString());
            //            dblCount2 += dblQuantity;
            //            //// Get AMP
            //            //int intModel = 0;
            //            //int intServerModel = oForecast.GetModel(Int32.Parse(dr["id"].ToString()));
            //            //int intPlatform = Int32.Parse(dr["platformid"].ToString());
            //            //if (intServerModel == 0)
            //            //{
            //            //    // Get the model selected in the equipment dropdown (if not server)
            //            //    intModel = Int32.Parse(dr["modelid"].ToString());
            //            //    if (boolOverride == true && intModel > 0)
            //            //    {
            //            //        intServerModel = intModel;
            //            //        intModel = Int32.Parse(oModelsProperties.Get(intModel, "modelid"));
            //            //    }
            //            //}
            //            //if (intServerModel > 0)
            //            //    dblAmp += (double.Parse(oModelsProperties.Get(intServerModel, "amp")) * dblQuantity);
            //            //else if (intModel > 0)
            //            //{
            //            //    if (oModelsProperties.Get(intModel).Tables[0].Rows.Count > 0)
            //            //    {
            //            //        double dblAmpTemp = (double.Parse(oModelsProperties.Get(intModel, "amp")) * dblQuantity);
            //            //        dblAmp += dblAmpTemp;
            //            //    }
            //            //}
            //            //else
            //            //{
            //            //    DataSet dsVendor = oForecast.GetAnswer(Int32.Parse(dr["id"].ToString()));
            //            //    if (dsVendor.Tables[0].Rows.Count > 0 && dsVendor.Tables[0].Rows[0]["modelname"].ToString() != "")
            //            //        dblAmp += (double.Parse(dsVendor.Tables[0].Rows[0]["amp"].ToString()) * dblQuantity);
            //            //}
            //        }
            //        lblDate.Text = (_date == DateTime.MaxValue ? "---" : _date.ToShortDateString());
            //        lblCount.Text = dblCount2.ToString();
            //    }
            //    Label lblAmp = (Label)ri.FindControl("lblAmp");
            //    lblAmp.Text = dblAmp.ToString("F");
            //}
            lblNone.Visible = (rptView.Items.Count == 0);
            _start++;
        }

        protected void btnOrder_Click(Object Sender, EventArgs e)
        {
            LinkButton oOrder = (LinkButton)Sender;
            string strPage = "";
            string strOrder = "";
            if (Request.QueryString["sort"] != null)
            {
                if (Request.QueryString["sort"] == oOrder.CommandArgument)
                    strOrder = oOrder.CommandArgument + " DESC";
            }
            if (strOrder == "")
                strOrder = oOrder.CommandArgument;
            if (Request.QueryString["page"] != null)
                strPage = Request.QueryString["page"];
            Response.Redirect(oPage.GetFullLink(intPage) + "?sort=" + strOrder + "&page=" + strPage);
        }

        protected void btnPage_Click(Object Sender, ImageClickEventArgs e)
        {
            string strOrder = "";
            if (Request.QueryString["sort"] != null)
                strOrder = Request.QueryString["sort"];
            Response.Redirect(oPage.GetFullLink(intPage) + "?sort=" + strOrder + "&page=" + txtPage.Text);
        }

        private void LoadPaging(int intStart, string _sort)
        {
            int intCount = oForecast.Gets(intProfile).Tables[0].Rows.Count;
            double dblEnd = Math.Ceiling(Double.Parse(intCount.ToString()) / Double.Parse(intRecords.ToString()));
            int intEnd = Int32.Parse(dblEnd.ToString());
            int ii = 0;
            txtPage.Text = intStart.ToString();
            lblPages.Text = intEnd.ToString();
            if (intEnd < 7)
            {
                for (ii = 1; ii < intEnd; ii++)
                {
                    LoadLink(lblTopPaging, ii, ", ", intStart);
                    LoadLink(lblBottomPaging, ii, ", ", intStart);
                }
                LoadLink(lblTopPaging, intEnd, "", intStart);
                LoadLink(lblBottomPaging, intEnd, "", intStart);
            }
            else
            {
                if (intStart < 5)
                {
                    for (ii = 1; ii < 6 && ii < intEnd; ii++)
                    {
                        LoadLink(lblTopPaging, ii, ", ", intStart);
                        LoadLink(lblBottomPaging, ii, ", ", intStart);
                    }
                    if (ii < intEnd)
                    {
                        LoadLink(lblTopPaging, ii, " .... ", intStart);
                        LoadLink(lblBottomPaging, ii, " .... ", intStart);
                    }
                    LoadLink(lblTopPaging, intEnd, "", intStart);
                    LoadLink(lblBottomPaging, intEnd, "", intStart);
                }
                else if (intStart > (intEnd - 4))
                {
                    LoadLink(lblTopPaging, 1, " .... ", intStart);
                    LoadLink(lblBottomPaging, 1, " .... ", intStart);
                    for (ii = (intEnd - 5); ii < intEnd && ii > 0; ii++)
                    {
                        LoadLink(lblTopPaging, ii, ", ", intStart);
                        LoadLink(lblBottomPaging, ii, ", ", intStart);
                    }
                    LoadLink(lblTopPaging, intEnd, "", intStart);
                    LoadLink(lblBottomPaging, intEnd, "", intStart);
                }
                else
                {
                    LoadLink(lblTopPaging, 1, " .... ", intStart);
                    LoadLink(lblBottomPaging, 1, " .... ", intStart);
                    for (ii = (intStart - 2); ii < (intStart + 3) && ii < intEnd && ii > 0; ii++)
                    {
                        if (ii == (intStart + 2))
                        {
                            LoadLink(lblTopPaging, ii, " .... ", intStart);
                            LoadLink(lblBottomPaging, ii, " .... ", intStart);
                        }
                        else
                        {
                            LoadLink(lblTopPaging, ii, ", ", intStart);
                            LoadLink(lblBottomPaging, ii, ", ", intStart);
                        }
                    }
                    LoadLink(lblTopPaging, intEnd, "", intStart);
                    LoadLink(lblBottomPaging, intEnd, "", intStart);
                }
            }
            LoopRepeater(_sort, ((intStart - 1) * intRecords));
            // LOAD PLATFORMS
            Platforms oPlatform = new Platforms(intProfile, dsn);
            DataSet dsPlatforms = oPlatform.GetForecasts(1);
            foreach (DataRow dr in dsPlatforms.Tables[0].Rows)
                strTotals += "<td class=\"default\">" + (dr["image"].ToString() != "" ? "<img src=\"" + dr["image"].ToString() + "\" border=\"0\" align=\"absmiddle\" />" : "") + " <b>" + oForecast.GetPlatformCount(Int32.Parse(dr["platformid"].ToString())) + "</b> " + dr["name"].ToString() + "</td><td class=\"default\">&nbsp;</td>";
            strTotals = "<table cellpadding=\"2\" cellspacing=\"2\" border=\"0\"><tr>" + strTotals + "</tr></table>";
        }

        private void LoadLink(Label _label, int _number, string _spacer, int _start)
        {
            StringBuilder sb = new StringBuilder(_label.Text);

            if (_number == _start)
            {
                sb.Append("<b><font style=\"color:#CC0000\">");
                sb.Append(_number.ToString());
                sb.Append("</font></b>");
            }
            else
            {
                string strSort = "";
                if (Request.QueryString["sort"] != null)
                {
                    strSort = Request.QueryString["sort"];
                }

                sb.Append("<a href=\"");
                sb.Append(oPage.GetFullLink(intPage));
                sb.Append("?sort=");
                sb.Append(strSort);
                sb.Append("&page=");
                sb.Append(_number.ToString());
                sb.Append("\" title=\"Go to Page ");
                sb.Append(_number.ToString());
                sb.Append("\">");
                sb.Append(_number.ToString());
                sb.Append("</a>");
            }

            if (_spacer != "")
            {
                sb.Append(_spacer);
            }

            _label.Text = sb.ToString();
        }
    }
}