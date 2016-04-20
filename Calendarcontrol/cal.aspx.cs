using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;

using System.Xml;
using Newtonsoft.Json;
using System.Runtime.Serialization;
using System.Web.Script;
using System.Web.Script.Serialization;
//using System.Runtime.Serialization.Json;
namespace Calendarcontrol
{
    public partial class cal : System.Web.UI.Page

    {
        DataSet dsevents;
             Calendar cals = new Calendar();
             protected void Page_Load(object sender, EventArgs e)
             {



             }
           protected void btnhome_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Home.aspx");
            //Calendar cal = new Calendar();
            //DataSet dsevents;
            //SqlDataAdapter da;
            //dsevents = new DataSet();
            //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Calendar.mdf;Integrated Security=True;User Instance=True");
            //string querystring = "Select * from AddEvent";
            ////con.Open();
            ////string querystring = "Select * from AddEvent";
            //SqlCommand cmd = new SqlCommand(querystring, con);
            ////cmd.ExecuteNonQuery();
            //da = new SqlDataAdapter(cmd);

            //da.Fill(dsevents);
            //var title = dsevents.Tables[0].Rows[0][0].ToString();
           
           // var events = title + st


           
        }

        protected void btnsearchevent_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewSearch.aspx");
        }

        protected void btnnewevent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginv.aspx");
        }

        //public JsonResult GetDiaryEvents(double start, double end)
        //{
        //    var ApptListForDate = DiaryEvent.LoadAllAppointmentsInDateRange(start, end);
        //    var eventList = from e in ApptListForDate
        //                    select new
        //                    {
        //                        id = e.ID,
        //                        title = e.Title,
        //                        start = e.StartDateString,
        //                        end = e.EndDateString,
        //                        color = e.StatusColor,
        //                        someKey = e.SomeImportantKeyID,
        //                        allDay = false
        //                    };
        //    var rows = eventList.ToArray();
        //    return Json(rows, JsonRequestBehavior.AllowGet);
        //}





           }
}