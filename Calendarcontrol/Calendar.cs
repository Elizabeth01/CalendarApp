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
    public class Calendar
    {
     SqlConnection con;
      //  SqlDataAdapter adpmBankingRegistration;
        DataSet dsevents;
        SqlDataAdapter da;
       


    public DataSet Add()
        {
            try
            {
                dsevents = new DataSet();
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Calendar.mdf;Integrated Security=True;User Instance=True");
//string querystring = "Insert into AddEvent(EventType,EventDate,EventTime,Place,Comments) values('" + seveenttype + "','" + sDate + "','" + time + "','" + place + "','" + " " + "' ) ";
                //con.Open();
                string querystring = "Select * from AddEvent";
                SqlCommand cmd = new SqlCommand(querystring, con);
                //cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                 
                da.Fill(dsevents);
               
               // SqlDataReader reader = cmd.ExecuteReader();
              // 
              //con.Close();
               
        ////
            }
                
            catch (Exception ex)
            {
                //iErrNum = 20999;
                //sErrMsg = ex.Message;
            }
            return dsevents;
           

        }

        //internal DataSet Add(string p, string p_2, string p_3)
        //{
        //    throw new System.NotImplementedException();
        //}
    }
    }
