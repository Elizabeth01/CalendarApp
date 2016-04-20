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
namespace Calendarcontrol
{
    public class NewSearchss
    {
        SqlConnection con;
        //  SqlDataAdapter adpmBankingRegistration;
        DataSet dsevents;
        SqlDataAdapter da;
        Int16 Ierrnum;
        DataSet dsPlace;
        DataSet dsUpdate;
        DataSet dsUpdateBind;
        DataSet dsSearch;


        public DataSet Search(string seveenttype, string sDate)
        {
            try
            {
                dsevents = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
                string querystring = "SELECT EVENT_SER_NUMBER SER_NUMBER,EVENT_TYPE TYPE,EVENT_DATE DATE,EVENT_PLACE PLACE FROM EVENTS WHERE EVENT_TYPE='" + seveenttype + "' OR EVENT_DATE='"+sDate+"'";
              //  AND EVENT_DATE='" + sDate + "' OR EVENT_PLACE ='" + place + "' ";
                
                SqlCommand cmd = new SqlCommand(querystring, con);
                //cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);

                da.Fill(dsevents);

              
            }

            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }
            return dsevents;

        }


        public DataSet Edit(Int32 iSernumber)
        {
            try
            {
                dsSearch = new DataSet();
  SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");

  string querystring = "SELECT EVENT_SER_NUMBER SER_NUMBER,EVENT_TYPE TYPE,EVENT_DATE DATE,EVENT_TIME TIME,EVENT_PLACE PLACE,EVENT_COMMENTS COMMENTS FROM EVENTS WHERE EVENT_SER_NUMBER='" + iSernumber + "' ";
           SqlCommand cmd = new SqlCommand(querystring, con);
           //cmd.ExecuteNonQuery();
           da = new SqlDataAdapter(cmd);

           da.Fill(dsSearch);
            
            }
            catch (Exception ex)
            {
            }
            return dsSearch;
        }


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
                Ierrnum = 0;

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
                dsPlace = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");

                string querystring = "SELECT MEETING_SER_NUMBER,MEETING_PLACE FROM PLACE WHERE MEETING_CODE='1'";
                //cmd.ExecuteNonQuery();
                SqlCommand cmd = new SqlCommand(querystring, con);

                da = new SqlDataAdapter(cmd);

                da.Fill(dsPlace);
                Ierrnum = 0;

            }
            catch (Exception ex)
            {
            }
            return dsPlace;
        }


        public DataSet Update( Int32 iSernumber,string sType,string sDate,string sTime,string sPlace,string sComment )
        {
            try
            {
                dsUpdate= new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");

                string querystring = "UPDATE EVENTS SET EVENT_TYPE ='" + sType + "',EVENT_DATE ='" + sDate + "',EVENT_TIME = '" + sTime + "',EVENT_PLACE = '" + sPlace + "',EVENT_COMMENTS='" + sComment + "' WHERE EVENT_SER_NUMBER ='" + iSernumber + "'";
                //cmd.ExecuteNonQuery();
                SqlCommand cmd = new SqlCommand(querystring, con);

                da = new SqlDataAdapter(cmd);

                da.Fill(dsUpdate);
                Ierrnum = 0;

            }
            catch (Exception ex)
            {
            }
            return dsPlace;
        }


        public DataSet UpdateBind(Int32 serNumber)
        {
            try
            {
                dsUpdateBind = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
                string querystring = "SELECT EVENT_SER_NUMBER SER_NUMBER,EVENT_TYPE TYPE,EVENT_DATE DATE,EVENT_PLACE PLACE FROM EVENTS WHERE EVENT_SER_NUMBER='" + serNumber + "'";
                //  AND EVENT_DATE='" + sDate + "' OR EVENT_PLACE ='" + place + "' ";

                SqlCommand cmd = new SqlCommand(querystring, con);
                //cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);

                da.Fill(dsUpdateBind);


            }

            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }
            return dsUpdateBind;

        }

        public void Delete(Int32 serNumber)
        {
            try
            {
                dsevents = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
                con.Open();
                string querystring = "DELETE FROM EVENTS WHERE EVENT_SER_NUMBER='" + serNumber + "'";
                //  AND EVENT_DATE='" + sDate + "' OR EVENT_PLACE ='" + place + "' ";
            
                SqlCommand cmd = new SqlCommand(querystring, con);
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);

               // da.Fill(dsevents);


            }

            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }
           

        }


    }

}