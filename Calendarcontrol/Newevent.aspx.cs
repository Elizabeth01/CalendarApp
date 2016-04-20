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

using System.Xml;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Web.Script;
using System.Web.Script.Serialization;
using System.Web.Services;
//using System.Collections.Generic;


namespace Calendarcontrol
{
  
    public partial class Newevent : System.Web.UI.Page
    {

        Newevents events =new Newevents();
        DataSet dsevents;
       
     
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
                 if (!IsPostBack)
                    {
                        btnSave.Attributes["Onclick"] = "return DisplayConfMsg('Do you really want to save?')";
                    }

                
            
           
        }
   

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Page.Validate();
            var time = txteventhour.Text +":" +txteventminute.Text +":" +ddltime.SelectedItem.ToString();           
           
           
            if (Page.IsValid)
            {
                dsevents = events.Add(Convert.ToString(ddleventtype.SelectedItem.ToString()), txteventdate.Text, time, Convert.ToString(ddlplace.SelectedItem.ToString()), txtComment.Text);
                string script = "alert(\"Event Successfully Created\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                
                ddleventtype.SelectedIndex = 0;
                txteventdate.Text = " ";
                txteventhour.Text = " ";
                txteventminute.Text = "";
                //ddltime.Items.Clear();
                ddltime.SelectedIndex = 0;
                // ddlplace.Items.Clear();
                ddlplace.SelectedIndex = 0;
                txtComment.Text = "";


               
                Response.Redirect("Calendar.aspx");


            }
        }


      
        
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Calendar.aspx");
        }

        

        
    }
}