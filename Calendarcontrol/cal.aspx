


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cal.aspx.cs" Inherits="Calendarcontrol.cal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
 <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>--%>
    
    <title></title>
    <link href="StyleSheetE.css" rel="stylesheet" type="text/css" />
      
    <link href="Scripts/fullcalendar-2.1.1/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/fullcalendar-2.1.1/jquery-ui.css" rel="stylesheet" type="text/css" />
    <%--<link href="Scripts/fullcalendar-2.1.1/jquery-ui.theme.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/fullcalendar-2.1.1/jquery-ui.structure.css" rel="stylesheet" type="text/css" />--%>
    
    <script type="text/javascript" src="Scripts/fullcalendar-2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="Scripts/fullcalendar-2.1.1/moment.min.js"></script>
    <script src="Scripts/fullcalendar-2.1.1/fullcalendar.js" type="text/javascript"></script>

   <script type="text/javascript" language="javascript">

       $(document).ready(function () {

    


      $("#btnevent").click(function(){
          alert("button");
          $.msgBox({
              title: "ERROR",
              type: "error",
              content: "Connection Error"
          });

  });



      $('#calendar').fullCalendar({
//         eventClick: function() {
//            alert('a day has been clicked!');
//            },
//         dayClick: function (date, cell,jsEvent, view) {
//        
//         alert("The current date of the calendar is " +date);
//          
//        
//          alert('Current view: ' + view.name);
//         
//           },  
//         
           theme: true,
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
},

        handleWindowResize: true,
        height: 450,
         aspectRatio: 2,
           contentHeight:500,
           
     		editable: true,
     		eventLimit: true,
            selectable:true,
            slotMinutes: 15,
            allDaySlot: false,
            events: 'cal.aspx',
            eventClick: function (calEvent, jsEvent, view) {
                alert('a day has been clicked!');
            },


 events: function (start, end, callback) {
            $.ajax({
                type: "POST",    //WebMethods will not allow GET
                url: "Newevent.aspx",   //url of a webmethod - example below
               
                contentType: "application/json; charset=utf-8",  
                dataType: "json",
                success: function (doc) {
                    var events = [];   //javascript event object created here
                    var obj = $.parseJSON(doc.d);  //.net returns json wrapped in "d"
                    $(obj.event).each(function () { //yours is obj.calevent                          
                            events.push({
                           // title: $(this).attr('title'),  //your calevent object has identical parameters 'title', 'start', ect, so this will work
//                            start: $(this).attr('start'), // will be parsed into DateTime object    
//                            end: $(this).attr('end'),
//                            id: $(this).attr('id')

  title:'mmeeting',
                            start: 2014-10-11
                        });
                    });                     
                    callback(events);
                }
            });
        }























              
           });
           
       });

</script>
   

    <style type="text/css">
      
    </style>
   

</head>
<body>
<form id="form1" runat="server">
<div>
<table style="width: 100%; height: 100%">
<tr>
<td>                 <asp:ScriptManager ID="scmcalendar" runat="server">
                    </asp:ScriptManager>
 <asp:UpdatePanel ID="updPanel" runat="server">
                        <ContentTemplate>
<asp:Panel ID="pnlcalendar" runat="server">
 <td >
  
    

     <asp:Button ID="btnnewevent" runat="server" Text="NewEvent" CssClass="btn" 
         onclick="btnnewevent_Click" />
     
     <asp:Button ID="btnsearchevent" runat="server" Text="searchEvent" 
         CssClass="btn" onclick="btnsearchevent_Click" />
     <asp:Button ID="btnHome" runat="server" Text="Go Home" CssClass="btn" 
         onclick="btnhome_Click"  />
        

    
    
    
    
 </td>
   
    <div id="calendar"></div>

    
      
      
       
      </asp:Panel>
      </ContentTemplate>
      </asp:UpdatePanel>
      </td>
</tr>
</table>
      </div>
   </form>
</body>
</html>
