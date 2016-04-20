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
    public class Newevents
    {
        SqlConnection con;
      //  SqlDataAdapter adpmBankingRegistration;
        DataSet dsmBankingRegistration;
       
        public Newevents()
        {
        }



        public DataSet Search(Int32 iRecInsCode, string sRecMobile, out Int32 iErrNum, out string sErrMsg)
        {
            try
            {
                string querystring = "SELECT * FROM NewEvents  ";
                SqlConnection con = new SqlConnection();
                SqlCommand cmd = new SqlCommand(querystring, con);
                //SqlDataReader reader;

                //cmd.CommandText = "SELECT * FROM Customers";
                //cmd.CommandType = CommandType.Text;
                //cmd.Connection = sqlConnection1;

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                return reader;
                // Data is accessible through the DataReader object here.

                //sqlConnection1.Close();


            }
            catch (Exception ex)
            {
                iErrNum = 20999;
                sErrMsg = ex.Message;
            }

        }
    }
    }
