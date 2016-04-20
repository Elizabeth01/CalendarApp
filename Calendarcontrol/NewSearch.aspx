<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewSearch.aspx.cs" Inherits="Calendarcontrol.NewSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title> Search Event</title>  
    
    <link href="StyleSheetE.css" rel="stylesheet" type="text/css" />
    <link href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js" type="text/javascript"></script>
   
    <style type="text/css">
        .style1
        {
            width: 205px;
        }
        .style2
        {
            width: 89px;
        }
    </style>
    
      <script type="text/javascript" language="javascript">


          function confirmAction() {
              
              return confirm(" Are you sure you want to delete event?");

          }

  
        
             $(document).ready(function () {
                  $('#txteventdate').datepicker({ clickInput: true });

             });
          

          $(document).ready(function () {
              $("#txtEventDateEdit").datepicker();
          });
       
       
    </script>
   
</head>
<body>
    <form id="form1" runat="server">
    <div >
        <asp:ScriptManager ID="scmmbankService" runat="server">
        </asp:ScriptManager>
         
                    <asp:UpdatePanel ID="updPanel" runat="server">
                        <ContentTemplate>
                        <table  width='100px' align='center' height ='100px'>
<tr>
  <td  valign='top' colspan='4' align="right"> 
  <a name="top"></a>
  <a href="http://www.communityfamilycenters.org"><img src="Scripts/Images/bannernew.jpg"   border="0"></a></td>
</tr>
</table>
  

                            <table style="width: 100%">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="Label53" runat="server" CssClass="lblHeader" Text="SEARCH EVENT"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:Panel ID="pnlSearchHeader" runat="server" CssClass="cpnlHeader" BackColor="#FDBC2E" 
                                            >
                                            <asp:Image ID="imgcpnlSearch" runat="server" CssClass="imgbtnPlusMinus" />
                                            <asp:Label ID="lblSearch" runat="server" CssClass="lblcpnlHeader" Text="Search"></asp:Label></asp:Panel>
                                        <asp:Panel ID="pnlSearchBody" runat="server" CssClass="cpnlBody" >
                                            
                                            <table>
                                                <tr>
                                                   
                                                    <td class="style8">
                                                    <asp:Label ID="lbleventtype" runat="server" Text="Event Type"></asp:Label>
                                                    </td>
                                                 
                                                    <td class="style8">
                                                       
                                                        <asp:DropDownList ID="ddleventtype" runat="server" Width="186px" AutoPostBack="true">
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
                                                        <td class="style9">
                                                        
                                                       <%--<asp:RequiredFieldValidator ID="rfvevent" runat="server" 
                                                            ControlToValidate="ddleventtype" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Search" Width="16px" InitialValue="0"></asp:RequiredFieldValidator>--%></td>
                                                    <td class="style9" >
                                                         <asp:Label ID="lbleventdate" runat="server" Text="Event Date"></asp:Label></td>
                                                         
                                                         <td class="style9">
                                                         
                                                             &nbsp;<asp:TextBox ID="txteventdate" runat="server" Width="137px" ></asp:TextBox>
                                                         </td>
                                                      
                                                     <td class="style9" >
                                                         </td>
                                                            <td class="style9">
<%--                                                                <asp:RequiredFieldValidator ID="rfvdatess" runat="server" 
                                                            ControlToValidate="txteventdate" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Search" Width="16px"></asp:RequiredFieldValidator></--%>
                                                                <td class="style9">
                                                            <td class="style9">
                                                             <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn" onclick="btnSearch_Click" ValidationGroup="Search" 
                                                     />
                                                            </td>
                                                            <td class="style9">
                                                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn" onclick="btnCancel_Click" 
                                                     />
                                                            </td>
                                                    </tr>
                                                
                                                
                                            </table>
                                            </asp:Panel>
                                           
                                      
                                    </td>
                                   
                                </tr>
                            </table>
                            
                          <%--  <ajx:CollapsiblePanelExtender ID="cpnlSearch" runat="server" 
                                CollapseControlID="pnlSearchHeader" Collapsed="false" 
                                CollapsedImage="Images/Plus.gif" CollapsedSize="0" 
                                ExpandControlID="pnlSearchHeader" ExpandedImage="Images/Minus.gif" 
                                ImageControlID="imgcpnlSearch" TargetControlID="pnlSearchBody" 
                                TextLabelID="lblSearch">
                            </ajx:CollapsiblePanelExtender>
                                            --%>
                                           
                                         
                            <table>
                                <tr>
                                    <td  valign="top">
                                        <asp:Panel ID="pnlResultHeader" runat="server" CssClass="cpnlHeader" Visible="False" BackColor="#FDBC2E">
                                            <asp:Image ID="imgcpnlResult" runat="server" CssClass="imgbtnPlusMinus" />
                                            <asp:Label ID="lblResult" runat="server" CssClass="lblcpnlHeader" Text="Search Result"></asp:Label></asp:Panel>




                                            <asp:Panel ID="pnlResultBody" runat="server" CssClass="cpnlBody" 
                                            Visible="False"  >
                                            <asp:GridView ID="gvResult" runat="server" AutoGenerateColumns="False"
                                                CssClass="gv" PageSize="15" Width="399px" DataKeyNames="SER_NUMBER" 
                                                    OnRowCommand="gvResult_RowCommand" Height="156px"  >
                                                <Columns>
                                                   <asp:ButtonField CausesValidation="True" CommandName="select" DataTextField="TYPE"
                                                        HeaderText="EVENT TYPE"  >
                                                        <ControlStyle CssClass="lbtn" />
                                                    </asp:ButtonField>
                                                    <asp:BoundField DataField="DATE" HeaderText="EVENT DATE" />
                                                    <asp:BoundField DataField="PLACE" HeaderText="PLACE" />
                                                 
                                              <asp:TemplateField Visible="false" HeaderText="table">
                                                    <ItemTemplate>
                                                 <%--   <asp:Label ID = "lblTable" runat ="server" text='<%# Eval("tableid")%>' >
                                                    </asp:Label>--%>
                                                    
                                                    </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <%--<PagerTemplate>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td align="center">
                                                                <table width="1%">
                                                                    <tr>
                                                                        <td style="width: 100px">
                                                                            <asp:Button ID="gvbtnFirst" runat="server" CommandName="First" CssClass="imgbtnFirst"
                                                                                UseSubmitBehavior="False" ValidationGroup="Search" />
                                                                        </td>
                                                                        <td style="width: 100px">
                                                                            <asp:Button ID="gvbtnPrevious" runat="server" CommandName="Previous" CssClass="imgbtnPrevious"
                                                                                UseSubmitBehavior="False" ValidationGroup="Search" />
                                                                        </td>
                                                                        <td style="width: 100px">
                                                                            <asp:TextBox ID="txtSlider" runat="server" AutoPostBack="True" CausesValidation="True"
                                                                                CssClass="txtSlider" OnTextChanged="txtSlider_TextChanged" Text="<%# gvResult.PageIndex + 1 %>"
                                                                                ValidationGroup="Search"></asp:TextBox>
                                                                        </td>
                                                                        <td style="width: 100px">
                                                                            <asp:Button ID="gvbtnNext" runat="server" CommandName="Next" CssClass="imgbtnNext"
                                                                                UseSubmitBehavior="False" ValidationGroup="Search" />
                                                                        </td>
                                                                        <td style="width: 100px">
                                                                            <asp:Button ID="gvbtnLast" runat="server" CommandName="Last" CssClass="imgbtnLast"
                                                                                UseSubmitBehavior="False" ValidationGroup="Search" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <ajx:SliderExtender ID="sleGridView" runat="server" Maximum="<%# gvResult.PageCount %>"
                                                        Minimum="1" Orientation="Horizontal" Steps="<%# gvResult.PageCount %>" TargetControlID="txtSlider">
                                                    </ajx:SliderExtender>
                                                </PagerTemplate>
                                                <RowStyle CssClass="gvRow" />
                                                <FooterStyle CssClass="gvFooter" />
                                                <PagerStyle CssClass="gvPager" />
                                                <SelectedRowStyle CssClass="gvSelectedRow" />
                                                <HeaderStyle CssClass="gvHeader" />--%>
                                            </asp:GridView>
                                           <%-- <ajx:CollapsiblePanelExtender ID="cpnlResult" runat="server" TargetControlID="pnlResultBody"
                                                ExpandControlID="pnlResultHeader" CollapseControlID="pnlResultHeader" Collapsed="false"
                                                CollapsedSize="0" TextLabelID="lblResult" ImageControlID="imgcpnlResult" CollapsedImage="Images/Plus.gif"
                                                ExpandedImage="Images/Minus.gif">
                                            </ajx:CollapsiblePanelExtender>--%>
                                            <asp:Label ID="lblPageCount" runat="server" CssClass="lbl"></asp:Label>
                                        </asp:Panel>








                                        
                                    </td>
                                    <td  valign="top" >
                                        <asp:Panel ID="pnlEditHeader" runat="server" CssClass="cpnlHeader" Visible="False" BackColor="#FDBC2E">
                                            <asp:Image ID="imgcpnlEdit" runat="server" CssClass="imgbtnPlusMinus" />
                                            <asp:Label ID="lblEdit" runat="server" CssClass="lblcpnlHeader" Text="Event Details"></asp:Label>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlEditBody" runat="server" CssClass="cpnlBody" Visible="False" Width="800px"
                                            >
                                            

                                            <table style="height: 354px; width: 365px" >


                                            <tr>
                                                    <td class="style3" >
                                                       
                                                           <asp:Label ID="lblEventTypeEdit" runat="server" Text="Event Type"></asp:Label>
                                                    </td>
                                                    <td class="style1" >
                                                    
                                                        <asp:DropDownList ID="ddlEventtypeEdit" runat="server" Width="186px">
                                            
                                                    </asp:DropDownList>
                                                    </td>
                                                    <td class="style2">
                                                    
                                                    <asp:RequiredFieldValidator ID="rfvtypeedit" runat="server" 
                                                            ControlToValidate="ddlEventtypeEdit" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Updates" Width="16px" InitialValue="0"></asp:RequiredFieldValidator>
                                                        </td>

                                                        <td ></td>
                                                </tr>
                                                <tr>
                                                    <td class="style5" >
                                                       
                                                           <asp:Label ID="lblEventDateEdit" runat="server" Text="Event Date"></asp:Label>
                                                    </td>
                                                    <td class="style1"  >
                                                   <asp:TextBox ID="txtEventDateEdit" runat="server"  Width="186px"></asp:TextBox>
                                                    </td>
                                                    <td class="style2">    
                                                      <asp:RequiredFieldValidator ID="Rfvdateedit" runat="server" 
                                                            ControlToValidate="txtEventDateEdit" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Updates" Width="16px"></asp:RequiredFieldValidator>

                                                        </td>

                                                        <td class="style5"></td>
                                                </tr>
                                                <tr>
                                            <td  >
                                                <asp:Label ID="lblEventtimeEdit" runat="server" Text="Event Time"></asp:Label>
                                            </td>
                                            <td   >
                                                <asp:TextBox ID="txthourEdit" runat="server"  Width="33px" placeholder="HH" ></asp:TextBox>&nbsp:
                                                <asp:TextBox ID="txtMinuteEdit" runat="server" Width="44px" placeholder="MM"></asp:TextBox>&nbsp &nbsp
                                                
                                                <asp:DropDownList ID="ddltimeEdit" runat="server" Height="16px" Width="65px">
                                                   
                                                </asp:DropDownList>
                                                
                                            </td>
                                            <td  >
                                            <font color="red">
                                              <asp:RegularExpressionValidator ID="regttime" runat="server"     
                                    ErrorMessage="Invalid Hour" 
                                    ControlToValidate="txthourEdit"    
                                    ValidationExpression="^([1-9]|12|11|10)$" /></font>   
                                    <div >   <font color="red">
                                              <asp:RegularExpressionValidator ID="Regminute" runat="server"     
                                    ErrorMessage="Invalid minute" 
                                    ControlToValidate="txtMinuteEdit"    
                                    ValidationExpression="[0-5]?[0-9]" /></font> </div> 
                                            </td>
                                          



                                           <tr>
                                            <td class="style7" >
                                                <asp:Label ID="lblPlaceEdit" runat="server" Text="Place"></asp:Label>
                                                 </td>
                                            <td class="style1" >
                                                 <asp:DropDownList ID="ddlPlaceEdit" runat="server" Width="200px" Height="17px">
                                                 
                                                </asp:DropDownList></td>
                                            <td class="style2"  >
                                               <asp:RequiredFieldValidator ID="Rfvplaceedit" runat="server" 
                                                            ControlToValidate="ddlPlaceEdit" CssClass="vld" Display="Dynamic" 
                                                            ErrorMessage="This field is mandatory " Height="16px" 
                                                            ValidationGroup="Updates" Width="16px" InitialValue="0"></asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style7" >

                                           </td>
                                            </tr>


                                             <tr>
                                            <td >
                                                <asp:Label ID="lblcoomentsEdit" runat="server" Text="Comments"></asp:Label>
                                                 </td>
                                            <td class="style1" >
                                                <asp:TextBox ID="txtComments" runat="server"  Width="199px" 
                                                    TextMode="MultiLine"></asp:TextBox></td>
                                            <td class="style2" >
                                            </td>
                                            <td>

                                           </td>
                                            </tr>



                                             <tr>
                                            <td >
                                                <asp:Button ID="btnedit" runat="server" CssClass="btn" 
                                                    TabIndex="2" Text="Edit" Width="46px" onclick="btnedit_Click" />
                                                 </td>

                                                  <td class="style1" >
                                                <asp:Button ID="btnUpdate" runat="server" CssClass="btn" 
                                                    TabIndex="2" Text="Update" Width="63px" onclick="btnUpdate_Click" 
                                                          ValidationGroup="Updates"  />
                                                     <asp:Button ID="btnDelete" runat="server" CausesValidation="False" 
                                                          CssClass="btn" TabIndex="2" Text="Delete" onclick="btnDelete_Click" OnClientClick="return confirmAction();" />
                                                      <asp:Button ID="btnCancelEdit" runat="server" CausesValidation="False" 
                                                          CssClass="btn" TabIndex="2" Text="Cancel" onclick="btnCancelEdit_Click" />
                                                 </td>
                                            <td class="style2" >
                                                &nbsp;</td>
                                            <td >
                                            </td>
                                            <td>

                                           </td>
                                            </tr>
                                            </tr>





                                                <tr>
                                                    <td >
                                                    </td>
                                                    <td class="style1" >
                                                        
                                                    </td>
                                                    <td class="style2"  >
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                            </table>
                                            <%--<ajx:CollapsiblePanelExtender ID="cpnlEdit" runat="server" CollapseControlID="pnlEditHeader"
                                                Collapsed="false" CollapsedImage="Images/Plus.gif" CollapsedSize="0" ExpandControlID="pnlEditHeader"
                                                ExpandedImage="Images/Minus.gif" ImageControlID="imgcpnlEdit" TargetControlID="pnlEditBody"
                                                TextLabelID="lblEdit">
                                            </ajx:CollapsiblePanelExtender>--%>
                                           <%-- <ajx:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are you sure you want to delete?"
                                                TargetControlID="btnDelete">
                                            </ajx:ConfirmButtonExtender>--%>
                                        </asp:Panel>
                                        
                                        
                                    </td>
                                </tr>
                            </table>


                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                           
              
    
    </form>
</body>
</html>
