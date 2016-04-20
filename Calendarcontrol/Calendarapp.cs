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
    public class Calendarapp
    {


        SqlConnection con;
        //  SqlDataAdapter adpmBankingRegistration;
        DataSet dsapp;
        DataSet dscal;
        DataSet dsSearch;
        SqlDataAdapter da;
        Int16 Ierrnum;
        DataSet dsdate;





        public DataSet Getdate()
        {
            try
            {
                dsdate = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
                string querystring = "SELECT CONVERT(VARCHAR(10), GETDATE(), 101) AS [MM/DD/YYYY] ";
               
                SqlCommand cmd = new SqlCommand(querystring, con);
                //cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);

                da.Fill(dsdate);


            }

            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }
            return dsdate;

        }
        public DataSet OnDateClick(string idate)
        {
            try
            {
                dscal = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
                string querystring = "SELECT EVENT_SER_NUMBER SER_NUMBER,EVENT_TYPE TYPES,EVENT_DATE DATE FROM EVENTS WHERE EVENT_DATE ='" + idate + "'";
                //  AND EVENT_DATE='" + sDate + "' OR EVENT_PLACE ='" + place + "' ";

                SqlCommand cmd = new SqlCommand(querystring, con);
                //cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);

                da.Fill(dscal);


            }

            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }
            return dscal;

        }
        public DataSet OnPageload(string idate)
        {
            try
            {
                dsapp = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
                string querystring = " SELECT EVENT_SER_NUMBER SER_NUMBER,EVENT_TYPE TYPES,EVENT_DATE DATE FROM EVENTS WHERE EVENT_DATE ='"+idate+"' ";
                //  AND EVENT_DATE='" + sDate + "' OR EVENT_PLACE ='" + place + "' ";

                SqlCommand cmd = new SqlCommand(querystring, con);
                //cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);

                da.Fill(dsapp);


            }

            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }
            return dsapp;

        }

        public DataSet Edit(Int32 iSernumber)
        {
            try
            {
                dsSearch = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");

                string querystring = "SELECT EVENT_TYPE TYPE,EVENT_DATE DATE,EVENT_TIME TIME,EVENT_PLACE PLACE,EVENT_COMMENTS COMMENTS FROM EVENTS WHERE EVENT_SER_NUMBER='" + iSernumber + "' ";
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



    }
}