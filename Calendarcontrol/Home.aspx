<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Calendarcontrol.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">





<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            //alert("hai:");
            $('.acd').hide();
            $('.ulabout').hide();

            $('.support').click(function () {
               
                $(this).find('ul').slideToggle();
            });

           

            $('.liabout').click(function () {

                $(this).find('ul').slideToggle();
            });

           




        });
</script>
</head>
<body>
    <form id="form1" runat="server">
   
    <table  width='100px' align='center' height ='100px'>
<tr>
  <td  valign='top' colspan='4' align="right"> 
  <a name="top"></a>
  <a href="http://www.communityfamilycenters.org"><img src="Scripts/Images/bannernew.jpg" alt="Community Family Centers"  border="0"></a></td>
</tr>

<tr style= "background-color :#FDBC2E  "  >

    <td valign = 'top' > 
      <ul id="home" >
      <li><a href="Home.aspx" ><span>HOME</span></a></li></ul>
     </td>
     <td valign = 'top'> 
      <ul  >
      <li><a href="memeber.aspx" ><span>MEMBERS</span></a></li></ul>
      <%--<li id= "levents" class="item1"><a href="Loginv.aspx">Add Member</a></li>--%>
     </td>
     <td valign = 'top'> 
   <ul  >
    	  <li> <a href="Calendar.aspx"><span>EVENTS</span></a>
       <%--  <ul class="acd">  
         <li id= "levents" class="item1"><a href="cal.aspx">VIEW EVENTS</a></li>
         <li id="lcreateevents" class="item1"><a href="Loginv.aspx">CREATE EVENTS</a></li>
          </ul>--%>
         </li></ul>
  </td>


   <td valign = 'top' > 
   <ul>
	  <li class="liabout"><a href="#" id="A1" class="top_link"><span class="down">ABOUT</span></a>
         <ul class="ulabout">
         <li><a href="About1.aspx">CONTACT</a></li>
                  </ul>
         </li></ul>
  </td>
         </tr>
 

    </table>

    
 
   <table  width='993' align='center' cellpadding='0' cellspacing='0'>
<tr>
<td>
<font color="blue">
Caring Family Group (CFG) is an organization formed by families. Its mission is to help individuals and their families to improve their lives, and society through actions of love and service.The methodology of work for the CFG to execute its mission is based on meetings.  Families are classified in groups of 5 to 7.  Adults (husband and wife) meet twice a month in each other homes to talk about a specific topic related to the family.
CFG was formed in 1982, and it started with a few families in Chicago, Illinois.  Today it has growth and has presence in 10 states including Arizona, California, Colorado, Indiana, Iowa, Massachusetts, New Mexico, New York, Texas, and Washington DC.
</font>
</td>
  <td  valign='top' colspan='4' align="right"> 
    <div ><a  href="http://familychurch.co/connect/growthtrack/">
    
    <span ><img alt="" class="single_slide_image" src="Scripts/Images/home_image2.jpg" /></span></a>
    </div>
      
   </td>
   </tr>
   </table>
    </form>
</body>
</html>
