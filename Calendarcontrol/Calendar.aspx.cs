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
using System.Data.Sql;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Xml;

namespace Calendarcontrol
{
    public partial class Calendar1 : System.Web.UI.Page
    {
        Calendarapp app = new Calendarapp();
        DataSet dsapp = new DataSet();
        DataSet dscal = new DataSet();
        DataSet dsSearch = new DataSet();
        DataSet dsdate = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

 if (!Page.IsPostBack)
                {
                    dsdate = app.Getdate();
                    var abc = dsdate.Tables[0].Rows[0][0].ToString();
                   string[] dates = abc.Split(' ');
                   var todaydate = dates[0];
                   dsapp = app.OnPageload(todaydate);
            if (dsapp.Tables[0].Rows.Count == 0)
            {

                string script = "alert(\"NO EVENTS FOUND \");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                pnlResultHeader.Visible = false;
                pnlResultBody.Visible = false;
            }
            else
            {

                gvResult.DataSource = dsapp;
                gvResult.DataBind();
                gvResult.Visible = true;
                pnlResultHeader.Visible = true;
                pnlResultBody.Visible = true;
            }
                pnlSearchBody.Visible = false;
                pnlSearchHeader.Visible = false;
 }
 myDiv.Visible = true;                           
        }
        protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
        {

            string date = "";
            date = MyCalendar.SelectedDate.ToString("MM/dd/yyyy");//lblDates.Text = "You selected these dates:<br />";


            dscal = app.OnDateClick(date);
                if (dscal.Tables[0].Rows.Count == 0)
                {

                    string script = "alert(\"NO EVENTS FOUND \");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                    pnlResultHeader.Visible = false;
                    pnlResultBody.Visible = false;
                }
                else
                {
                    pnlResultBody.Visible = true;
                    pnlResultHeader.Visible = true;
                     gvResult.DataSource = dscal;
                    gvResult.DataBind();
                    pnlResultBody.Visible = true;
                    pnlResultBody.Visible = true;


                }
            
        }
      

        
        protected void MyCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.Day == 28 && e.Day.Date.Month == 2)
            {
                e.Cell.BackColor = System.Drawing.Color.Yellow;
             
            }


        }


        protected void gvResult_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            pnlResultBody.Visible = false;
            pnlResultHeader.Visible = false;
            pnlSearchBody.Visible = true;
            pnlResultHeader.Visible = true;
            pnlCalendarHeader.Visible = false;
            myDiv.Visible = false;

            PnlcalendarBody.Visible = false;
            ddleventtype.Items.Clear();
            txteventdates.Text = "";
            txteventhour.Text = "";
            txteventminute.Text = "";
            ddltime.Items.Clear();
            ddlplace.Items.Clear();
            txtComment.Text = "";

            int currentRowIndex = Convert.ToInt32(e.CommandArgument);
            Session["SerialNumber"] = Convert.ToInt64(gvResult.DataKeys[currentRowIndex].Value);
            dsSearch = app.Edit(Convert.ToInt32(Session["SerialNumber"]));
            //panelAddNew.Visible = true;
            pnlSearchBody.Visible = true;

            ddleventtype.Items.Add(new ListItem(dsSearch.Tables[0].Rows[0][0].ToString()));
            txteventdates.Text = dsSearch.Tables[0].Rows[0][1].ToString();

            var time = dsSearch.Tables[0].Rows[0][2].ToString();

            string[] tokens = time.Split(':');
            string hour = tokens[0];
            string minute = tokens[1];
            string zone = tokens[2];


            txteventhour.Text = hour;
            txteventminute.Text = minute;
           ddltime.Items.Add(new ListItem(zone));

           // txteventhour.Text = dsSearch.Tables[0].Rows[0][2].ToString();
            ddlplace.Items.Add(new ListItem(dsSearch.Tables[0].Rows[0][3].ToString()));
            txtComment.Text = dsSearch.Tables[0].Rows[0][4].ToString();

            ddleventtype.Enabled = false;
            txteventdates.Enabled = false;
           // txthourEdit.Enabled = false;
            txteventhour.Enabled = false;
            txteventminute.Enabled = false;
            ddltime.Enabled = false;
            ddlplace.Enabled = false;
            txtComment.Enabled = false;


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            PnlcalendarBody.Visible = true;
            pnlCalendarHeader.Visible = true;
            pnlResultBody.Visible = true;
            pnlResultHeader.Visible = true;
            pnlSearchHeader.Visible = false;
            pnlSearchBody.Visible = false;
          
        }

        protected void btnnewevent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginv.aspx");
        }

        protected void btnsearchevent_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewSearch.aspx");
        }

        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }





    }
}