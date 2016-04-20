<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Searchevent.aspx.cs" Inherits="Calendarcontrol.Searchevent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  
    <link href="StyleSheetE.css" rel="stylesheet" type="text/css" />
    
    <link href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js" type="text/javascript"></script>
   
    
     <style type="text/css">
       
html, body {
    height: 100%;
  }
  #tableContainer-1 {
    height: 100%;
    width: 100%;
    display: table;
  }
  #tableContainer-2 {
    vertical-align: middle;
    display: table-cell;
    height: 100%;
  }
  #myTable {
    margin: 0 auto;
     margin-left: auto; 
margin-right: auto; 
text-align: left; 
  }

       
        .style17
        {
            width: 140px;
            height: 58px;
        }
        
         .style18
         {
             height: 58px;
         }
           

    </style>

      <script type="text/javascript" language="javascript">
          $(function () {
              $("#txteventdate").datepicker();

          });
       
    </script>
        

</head>
<body>
    <form id="form1" runat="server"  >
    <asp:ScriptManager ID="scmAddresses" runat="server"></asp:ScriptManager>
     <div id="tableContainer-1" >
                        <div id="tableContainer-2">
        <table id="myTable" >
            <tr>
                <td >
                    <asp:UpdatePanel ID="updPanel" runat="server">
                        <ContentTemplate>
                            <table >
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="lblHead" runat="server" CssClass="lblHeader" Text="Searchevent"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>
                                        
<asp:Panel ID="pnlSearchHeader" runat="server" CssClass="cpnlHeader" BackColor="#FDBC2E"  >
                                            
                                        </asp:Panel>
                                        

                                        <asp:Panel ID="pnlSearchBody" runat="server" CssClass="cpnlBody"  
                                             BackImageUrl ="Scripts/Images/home_image2.jpg" Height="700px">
  
                                            <table class="center" >
                                            <tr>
                                            <td class="style17">
                                                <asp:Label ID="lbleventtype" runat="server" Text="Event Type"></asp:Label>
                                            </td>
                                            <td class="style17">
                                             <asp:DropDownList ID="ddleventtype" runat="server" Width="186px">
                                              <asp:ListItem Value="0">----Select-----</asp:ListItem>
                                                    <asp:ListItem Value="1">Directory Meeting</asp:ListItem>
                                                     <asp:ListItem Value="4">General Meeting</asp:ListItem>
                                                    <asp:ListItem Value="7">Event Planning Meeting</asp:ListItem>
                                                    <asp:ListItem Value="4">Topic Prepartion Meeting</asp:ListItem>
                                                    <asp:ListItem Value="5">Group Meeting</asp:ListItem>
                                                    <asp:ListItem Value="6">Quarter Revision Meeting</asp:ListItem>
                                                    <asp:ListItem Value="7">Special Event</asp:ListItem>
                                                    <asp:ListItem Value="8">Event Planning</asp:ListItem>
                                                    </asp:DropDownList>
                                            </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style17">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                <asp:Label ID="lbleventdate" runat="server" Text="Event Date"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txteventdate" runat="server" Width="137px"></asp:TextBox>
                                            </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style17">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                <asp:Label ID="lblplace0" runat="server" Text="Place"></asp:Label>
                                            </td>
                                                                                        <td class="style17">
                                                                                            <asp:DropDownList ID="ddlplace0" runat="server" Width="186px">
                                                                                                <asp:ListItem Value="0">----Select-----</asp:ListItem>
                                                                                                <asp:ListItem Value="1">Family Room 1</asp:ListItem>
                                                                                                <asp:ListItem Value="7">Community Room</asp:ListItem>
                                                                                                <asp:ListItem Value="4">Room 206</asp:ListItem>
                                                                                                <asp:ListItem Value="4">Room 305</asp:ListItem>
                                                                                                <asp:ListItem Value="5">Room 110</asp:ListItem>
                                                                                            </asp:DropDownList>
                                                 </td>
                                            <td class="style17">
                                                 &nbsp;</td>
                                            <td class="style17">
                                            </td>
                                            <td class="style17">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                &nbsp;</td>
                                            <td class="style17">
                                                &nbsp;</td>
                                            <td class="style17">
                                            </td>
                                            <td class="style17">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                &nbsp;</td>
                                            <td class="style17">
                                                &nbsp;</td>
                                            <td class="style17">
                                            </td>
                                            <td>

                                           </td>
                                            </tr>



                                             <tr>
                                            <td class="style17">
                                            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn" 
                                                     />
                                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn" 
                                                    onclick="btnCancel_Click" />
                                                
                                            </td>
                                            <td class="style17">
                                                &nbsp;</td>
                                            <td class="style17">
                                            </td>
                                            <td class="style17">

                                           </td>
                                            </tr>




                                                  <tr>
                                            <td class="style17">
                                                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" 
                                                    Width="58px" Visible= "false" onclick="btnUpdate_Click"  />
                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn" 
                                                    Visible="false" onclick="btnDelete_Click"
                                                    />
                                                
                                            </td>
                                            <td class="style17">
                                            <asp:Button ID="btncancelE" runat="server" Text="Cancel" CssClass="btn" 
                                                    Visible="false" onclick="btncancelE_Click"
                                                     />

                                               
                                            </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style18">

                                           </td>
                                            </tr>
                                                
                                            </table>
                                            
                                        </asp:Panel>




                                    </td>
                                </tr>
                            </table>
                            
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    
                    </td>
            </tr>
        </table>
        </div>
        </div>
    </form>
</body>
</html>
