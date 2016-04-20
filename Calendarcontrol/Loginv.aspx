<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginv.aspx.cs" Inherits="Calendarcontrol.Loginv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
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
                                        <asp:Label ID="lblHead" runat="server" CssClass="lblHeader" Text="Login"></asp:Label></td>
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
                                            <td class="style17">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                <asp:Label ID="lblusername" runat="server" Text="User Name"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txtusername" runat="server" Width="136px"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtusername" runat="server" ValidationGroup="Login" />
                                            </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style17">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                                <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
                                               
                                            </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" Width="136px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please enter Password" ValidationGroup= "Login"/>
                                            </td>
                                            <td class="style17">

                                            </td>
                                            <td class="style17">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style17">
                                             <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" 
                                                    onclick="btnLogin_Click" ValidationGroup="Login" 
                                                    />
                                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn" onclick="btnCancel_Click" 
                                                  />
                                               </td>
                                              <%-- <td  class="style17">
                                               <asp:Button ID="btnlogin1" runat="server" Text=" Login" CssClass="btn" OnClick="btnlogin_click" />
                                               </td>--%>
                                            <td class="style17">
                                                &nbsp;</td>
                                            <td class="style17">
                                            </td>
                                            <td>

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




