using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace Calendarcontrol
{
    public partial class memeber : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        private string s;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                binddata();
            }
        }
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Calendar.mdf;Integrated Security=True;User Instance=True");
        //con.Open();
        void binddata()
        {
            //s = WebConfigurationManager.ConnectionStrings["ChartDatabaseConnectionString"].ConnectionString;
            //con = new SqlConnection(s);
            SqlConnection con = new SqlConnection(@"Data Source=ELIZABETH-PC\SQLSERVER;Initial Catalog=CalendarApp;User ID=sa;Password=root@12345");
            //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Calendar.mdf;Integrated Security=True;User Instance=True");
            con.Open();
          da = new SqlDataAdapter("SELECT * FROM MEMBER", con);
          //da = new SqlDataAdapter("Select General,Name1,Name2,LastName,Address,Phone1,Phone2,Email1,Email2 from Members", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}


        
    
