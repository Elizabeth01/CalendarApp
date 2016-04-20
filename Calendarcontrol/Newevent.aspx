<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newevent.aspx.cs" Inherits="Calendarcontrol.Newevent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


<head>
<title>NewEvent</title>
    <link href="StyleSheetE.css" rel="stylesheet" type="text/css" />
     <link href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js" type="text/javascript"></script>

    <style type="text/css">

html, body {
    height: 100%;
  }
  
 


       
      .style17
        {
            width: 140px;
            height: 58px;
        }
        
        #TextArea1
        {
            height: 101px;
            width: 206px;
        }
       
        
        .style18
        {
            width: 1025px;
        }
        .style21
        {
            width: 25px;
            height: 58px;
        }
        .style22
        {
            width: 25px;
        }
        .style23
        {
            width: 99px;
        }
        .style24
        {
            width: 99px;
            height: 58px;
        }
       

      
        
    </style>

    <script type="text/javascript" language="javascript">


        function DisplayConfMsg(msg) {
            var result = confirm(msg);
            if (result)
                return true;
            else
                return false;
        }
        function confirmAction() {

            return confirm("Event Suceesfully Created");

        }
      $(document).ready(function (){
          $('#txteventdate').datepicker({ clickInput: true });

        });
       
    </script>



</head>
<body>
    <form id="form1" runat="server"  >
    <asp:ScriptManager ID="scmAddresses" runat="server"></asp:ScriptManager>
     <div id="tableContainer-1" >
                        <div id="tableContainer-2">
        <table  id="myTable" >
            <tr>
                <td >
                    <asp:UpdatePanel ID="updPanel" runat="server">
                        <ContentTemplate>
                         <table >
<tr>
  <td  valign='top' > 
  <a name="top"></a>
  <a href="http://www.communityfamilycenters.org">
      <img src="Scripts/Images/bannernew.jpg" alt="Community Family Centers"  
          style="width: 993px; height: 110px"></a></td>
</tr>
</table>

                       
                            <table >
                                <tr>
                                    <td align="center" class="style18">
                                        <asp:Label ID="lblHead" runat="server" CssClass="lblHeader" Text="Newevent"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                     <asp:Panel ID="pnlSearchHeader" runat="server" CssClass="cpnlHeader" 
                                            BackColor="#FDBC2E" Height="16px" Width="1020px"   >
                                            
                                        </asp:Panel>
                                        <div style="width: 100%; height: 100%; background-image:url(Scripts/Images/home_image.jpg); background-repeat:no-repeat" >

                                        <asp:Panel ID="pnlSearchBody" runat="server" CssClass="cpnlBody"  
                                              style="width: 100%; height: 100%">
  
                                            <table class="center" >
                                            <tr>
                                            <td class="style17">
                                                <asp:Label ID="lbleventtype" runat="server" Text="Event Type"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:DropDownList ID="ddleventtype" runat="server" Width="186px" AutoPostBack="false">
                                                  <asp:ListItem Value="0">----Select-----</asp:ListItem>
                                                      <asp:ListItem Value="1">DIRECTORY MEETING</asp:ListItem>
                                                     <asp:ListItem Value="2">GENERAL MEETING</asp:ListItem>
                                                    <asp:ListItem Value="3">EVENT PLANNING</asp:ListItem>
                                                    <asp:ListItem Value="4">TOPIC PREPARATION</asp:ListItem>
                                                    <asp:ListItem Value="5">GROUP MEETING</asp:ListItem>
                                                    <asp:ListItem Value="6">QUARTER REVISION</asp:ListItem>
                                                    <asp:ListItem Value="7">SPECIAL EVENTS</asp:ListItem>
                                                    
                                                </asp:DropDownList>
                                                
                                                                                            </td>
                                            <td class="style23" >
                                            <asp:RequiredFieldValidator ID="rfvtype" runat="server" 
                                                            ControlToValidate="ddleventtype" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Save" Width="16px" InitialValue="0"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style21">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                <asp:Label ID="lbleventdate" runat="server" Text="Event Date"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txteventdate" runat="server"  Width="186px" ></asp:TextBox>
                                            </td>
                                            <td class="style23" >
                                            <asp:RequiredFieldValidator ID="rfveventdate" runat="server" 
                                                            ControlToValidate="txteventdate" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Save" Width="16px" ></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style21">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                <asp:Label ID="lbleventtime" runat="server" Text="Event Time"></asp:Label>
                                            </td>
                                           
                                            <td class="style17">
                                                <asp:TextBox ID="txteventhour" runat="server"  Width="41px" placeholder="HH"  ></asp:TextBox>&nbsp:
                                                <asp:TextBox ID="txteventminute" runat="server" Width="39px" placeholder="MM" ></asp:TextBox>
                                                
                                                <asp:DropDownList ID="ddltime" runat="server"  >
                                                <asp:ListItem Value="0">--Select---</asp:ListItem>
                                                    <asp:ListItem Value="1">AM</asp:ListItem>
                                                    <asp:ListItem Value="2">PM</asp:ListItem>
                                                </asp:DropDownList>
                                                
                                            </td>
                                          
                                           
                                            <td class="style23" >
                                           
                                                    <font color="red">
                                              <asp:RegularExpressionValidator ID="regttime" runat="server"     
                                    ErrorMessage="Invalid Hour" 
                                    ControlToValidate="txteventhour"    
                                    ValidationExpression="^([1-9]|12|11|10)$" /></font>   
                                    <div >   <font color="red">
                                              <asp:RegularExpressionValidator ID="Regminute" runat="server"     
                                    ErrorMessage="Invalid minute" 
                                    ControlToValidate="txteventminute"    
                                    ValidationExpression="[0-5]?[0-9]" /></font> </div> </td>
                                    <td class="style22">
                                    <asp:RequiredFieldValidator ID="rfvtime" runat="server" 
                                                            ControlToValidate="txteventhour" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="Hour field is mandatory " Height="16px" 
                                                            ValidationGroup="Save" Width="16px" ></asp:RequiredFieldValidator>
                                            </td>
                                            <td >

                                            <font color="red">
                                            <%-- <asp:RegularExpressionValidator ID="regminute" runat="server"     
                                    ErrorMessage="Invalid Minute" 
                                    ControlToValidate="txteventminute"     
                                    ValidationExpression="[0-5]?[0-9]|60"  />--%> </td>
                                   <td><asp:RequiredFieldValidator ID="rfvmin" runat="server" 
                                                            ControlToValidate="txteventminute" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="Minute field is mandatory " Height="16px" 
                                                            ValidationGroup="Save" Width="16px" ></asp:RequiredFieldValidator></font>

                                           </td>
                                          
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ControlToValidate="ddltime" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Save" Width="16px" InitialValue="0"></asp:RequiredFieldValidator>
                                            </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                <asp:Label ID="lblplace" runat="server" Text="Place"></asp:Label>
                                                 </td>
                                            <td class="style17">
                                                 <asp:DropDownList ID="ddlplace" runat="server" Width="199px" Height="20px">
                                                    <asp:ListItem Value="0">----Select-----</asp:ListItem>
                                                    <asp:ListItem Value="1">FAMILY ROOM</asp:ListItem>
                                                      <asp:ListItem Value="2">COMMUNITY ROOM</asp:ListItem>
                                                     <asp:ListItem Value="3">ROOM 234</asp:ListItem>
                                                  
                                                    <asp:ListItem Value="4">ROOM 305</asp:ListItem>
                                                    <asp:ListItem Value="5">ROOM 310</asp:ListItem>
                                                 
                                                </asp:DropDownList></td>
                                            <td class="style23" >

                                            <asp:RequiredFieldValidator ID="rfvplace" runat="server" 
                                                            ControlToValidate="ddlplace" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Save" Width="16px" InitialValue="0"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style21">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                <asp:Label ID="lblcomments0" runat="server" Text="Comments"></asp:Label>
                                                 </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Width="194px" 
                                                    Height="80px"></asp:TextBox>
                                                </td>
                                            <td class="style24">
                                            </td>
                                            <td class="style22">

                                           </td>
                                            </tr>
                                           <%-- OnClientClick="return confirmAction();"
--%>


                                             <tr>
                                            <td class="style17" colspan="1">
                                                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn" 
                                                   onclick="btnSave_Click" Width="70px" ValidationGroup="Save"  />
                                                
                                            </td>
                                            <td class="style17">
                                                <asp:Button ID="btnCancel" runat="server" CssClass="btn" 
                                                    onclick="btnCancel_Click" Text="Cancel" Width="69px" />
                                                 </td>
                                            <td class="style24">
                                            </td>
                                            <td class="style22">

                                           </td>
                                            </tr>
                                                
                                            </table>
                                            
                                        </asp:Panel>

                                        </div>


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

   



