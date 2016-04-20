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
using System.Web.Script;

using System.Xml;

namespace Calendarcontrol
{
    public partial class Loginv : System.Web.UI.Page
    {
        SqlDataAdapter da;
        
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

            Response.Redirect("Home.aspx");

        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Newevent.aspx");
            
            var bcd = txtusername.Text;
            var abc = txtpassword.Text;
            SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
            con.Open();
           // String checkuser = "select count (*)from Login where username='" + txtusername + "' and password='" + txtpassword.Text + "'";
            string querystring = "select * from Login3 where USERNAME ='" + bcd + "' and PASSWORD='" + abc + "'";
             SqlCommand cmd = new SqlCommand(querystring, con);
          //  con.Open();
           // int n = (int)cmd.ExecuteScalar();
           // con.Close();

            //if (n == 1)
            //{
            //    Response.Redirect("Newevent.aspx");
            //}
            //else
            //{ Response.Write("<h2> invalid user name and password<h2>");
            //}

            //cmd.Parameters.AddWithValue("@user name", txtusername.Text);
            //cmd.Parameters.AddWithValue("@password", txtpassword.Text);
             //SqlCommand cmd = new SqlCommand(querystring, con);
             da = new SqlDataAdapter(cmd);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
           {
                Response.Redirect("Newevent.aspx");
            }
            else
           {
               // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");

               string script = "alert(\"Invalid username and password \");";
               ScriptManager.RegisterStartupScript(this, GetType(),
                                     "ServerControlScript", script, true);
            }
            //SqlCommand cmd = new SqlCommand(checkuser, con);
            //int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            //con.Close();
            //if (temp == 1)
            //{
            //    con.Open();
            //    string checkpasswordquery = "select password from Login where username='" + txtusername + "'";
            //    SqlCommand pwd = new SqlCommand(checkpasswordquery, con);
            //    string password = pwd.ExecuteScalar().ToString().Replace(" ","");
            //    if (password == txtpassword.Text)
            //    {
            //        Session["new"] =txtusername.Text;
            //        Response.Write("password is correct");
                    //Response.Redirect("Newevent.aspx");

               // }
                //else
                //{
                //    Response.Write("password is not correct");

                //}

            //}
            //else
            //{
            //    Response.Write("username is not correct");
            //}



        }

        //protected void btnlogin_click(object sender, EventArgs e)
        //{
        //    Response.Redirect("AddMemeber.aspx");
        //}

    }   
}