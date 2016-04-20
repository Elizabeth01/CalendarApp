using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


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

using System.Data.SqlClient;

using System.Xml;


namespace Calendarcontrol
{
    //class Test
    //{
    //    public string setMeetingName { get; set; }
    //    public string setStartTime { get; set; }
    //    public string setEndTime { get; set; }
    //}
    public class Newevents
    {
        SqlConnection con;
    
        DataSet dsevents;
        DataSet dscal;
        SqlDataAdapter da;
        DataSet dsPlace;
        DataSet dsMeeting;
       
       
        //public Newevents()
        //{
       // ;SELECT SCOPE_IDENTITY()
        //




        public DataSet Add(string seveenttype, string sDate, string time, string place, string sComment)
        {
            try
            {
                dsevents = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
                string querystring = "Insert into EVENTS(EVENT_TYPE,EVENT_DATE,EVENT_TIME,EVENT_PLACE,EVENT_COMMENTS) values('" + seveenttype + "','" + sDate + "','" + time + "','" + place + "','" + sComment + "' ) ";
                
                SqlCommand cmd = new SqlCommand(querystring, con);
                con.Open();
                da = new SqlDataAdapter(cmd);

               // var SERNUMBER = cmd.ExecuteScalar();
                 
                da.Fill(dsevents);
                con.Close();
               
                   }
            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }

            return dsevents;
           

        }

        public DataSet Retrive(Int16 iSernumber)
        {
            try
            {
                dscal = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
                string querystring = "SELECT * FROM EVENTS WHERE EVENT_SER_NUMBER ='" + iSernumber + "'";

                SqlCommand cmd = new SqlCommand(querystring, con);
                con.Open();
                da = new SqlDataAdapter(cmd);

               // var SERNUMBER = cmd.ExecuteScalar();

                da.Fill(dscal);
                con.Close();

            }
            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }

            return dscal;


        }


        //public DataSet PlaceSearch()
        //{
        //    try
        //    {
        //        dsPlace = new DataSet();
        //        SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");

        //        string querystring = "SELECT MEETING_SER_NUMBER,MEETING_PLACE FROM PLACE WHERE MEETING_CODE='1'";
        //        //cmd.ExecuteNonQuery();
        //        SqlCommand cmd = new SqlCommand(querystring, con);

        //        da = new SqlDataAdapter(cmd);

        //        da.Fill(dsPlace);
        //        //Ierrnum = 0;

        //    }
        //    catch (Exception ex)
        //    {
        //    }
        //    return dsPlace;
        //}

        public DataSet MeetingSearch()
        {
            try
            {
                dsevents = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");

                string querystring = "SELECT MEETING_SER_NUMBER,MEETING FROM MEETINGS WHERE MEETING_CODE='1'";
                //cmd.ExecuteNonQuery();
                SqlCommand cmd = new SqlCommand(querystring, con);

                da = new SqlDataAdapter(cmd);

                da.Fill(dsevents);
                //Ierrnum = 0;

            }
            catch (Exception ex)
            {
            }
            return dsevents;
        }

        public DataSet PlaceSearch()
        {
            try
            {
                dsMeeting = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");

                string querystring = "SELECT MEETING_SER_NUMBER,MEETING_PLACE FROM PLACE WHERE MEETING_CODE='1'";
                //cmd.ExecuteNonQuery();
                SqlCommand cmd = new SqlCommand(querystring, con);

                da = new SqlDataAdapter(cmd);

                da.Fill(dsMeeting);
                //Ierrnum = 0;

            }
            catch (Exception ex)
            {
            }
            return dsPlace;
        }

    }
    }