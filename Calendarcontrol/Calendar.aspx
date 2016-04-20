<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Calendarcontrol.Calendar1" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="StyleSheetE.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
  
    <style type="text/css">
        
        
        
         .modalBackground {
            background-color:silver;
            opacity:0.7;
        }
        .gv
        {}
        .style3
        {
            width: 121px;
        }
        .style4
        {
            width: 417px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"  >
    <asp:ScriptManager ID="scmAddresses" runat="server"></asp:ScriptManager>
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
    <div style="width: 100%; height: 100%; background-image:url('Scripts/Images/home_image.jpg'); background-repeat:no-repeat; margin-right: 0px;" >


    <table style="width: 1003px; height: 25px;">
    <tr>

    <td align="center" class="style18" style="background-color:#FDBC2E">
                                        <asp:Label ID="lblHead" runat="server" CssClass="lblHeader" Text="View Events"></asp:Label></td>
    </tr>
    
    </table>
    <table>
   
    <tr>
    <td class="style4" >
    <asp:Panel ID="pnlCalendarHeader" runat="server" CssClass="cpnlHeader" BackColor="#FDBC2E"   >
                                            
                                        </asp:Panel>
                                         <asp:Panel ID="PnlcalendarBody" runat="server" CssClass="cpnlBody"  
                                              style="width: 100%; height: 100%">
         <asp:Calendar ID="MyCalendar" 
                      runat="server" 
                      BackColor="ControlLight"
                      BorderColor="White" 
                      BorderWidth="1px" 
                      Font-Names="Verdana" 
                      Font-Size="14pt" 
                      ForeColor="Black" 
                      Height="220px" 
                      NextPrevFormat="FullMonth" 
                       OnDayRender="MyCalendar_DayRender" 
                      OnSelectionChanged="MyCalendar_SelectionChanged" 
                      SelectionMode="DayWeek" 
                      Width="391px">
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <TodayDayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" 
                           Font-Size="8pt" 
                           ForeColor="#333333" 
                           VerticalAlign="Bottom" />
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <TitleStyle BackColor="White" 
                        BorderColor="Black" 
                        BorderWidth="4px" 
                        Font-Bold="True"
                        Font-Size="12pt" 
                        ForeColor="#333399" />
        </asp:Calendar>
        <asp:Label ID="lblDates" runat="server"></asp:Label>
        </asp:Panel>

        <div id="myDiv" runat="server" >
         <asp:Button ID="btnnewevent" runat="server" Text="NewEvent" CssClass="btn" 
         onclick="btnnewevent_Click" />
     
     <asp:Button ID="btnsearchevent" runat="server" Text="searchEvent" 
         CssClass="btn" onclick="btnsearchevent_Click" />
     <asp:Button ID="btnHome" runat="server" Text="Go Home" CssClass="btn" 
         onclick="btnhome_Click"  />
        
        </div> 

    </td>
    <td >
    
    

    <asp:Panel ID="pnlResultHeader" runat="server" CssClass="cpnlHeader"  BackColor="#FDBC2E">
                                            <asp:Image ID="imgcpnlResult" runat="server" CssClass="imgbtnPlusMinus" />
                                            <asp:Label ID="lblResult" runat="server" CssClass="lblcpnlHeader" Text="Summary"></asp:Label></asp:Panel>

                                            <asp:Panel ID="pnlResultBody" 
            runat="server" CssClass="cpnlBody" Height="350px" Width="480px" 
                                              >
                                            <asp:GridView ID="gvResult" runat="server" AutoGenerateColumns="False"
                                                CssClass="gv" PageSize="1" Width="476px" DataKeyNames="SER_NUMBER"  
                                                     Height="150px"   OnRowCommand="gvResult_RowCommand" 
                                                    EnableSortingAndPagingCallbacks="True"  >
                                                <Columns>
                                                   <asp:ButtonField CausesValidation="True" CommandName="select" DataTextField="TYPES"
                                                        HeaderText="EVENTS"  >
                                                        
                                                        
                                                        <ControlStyle CssClass="lbtn" />
                                                       </asp:ButtonField>
      
                                                        <asp:BoundField DataField="DATE" HeaderText="EVENT DATE" />
                                                    
                                                    
                                              <asp:TemplateField Visible="false" HeaderText="table">
                                                    <ItemTemplate>
                                                 <%--   <asp:Label ID = "lblTable" runat ="server" text='<%# Eval("tableid")%>'  Style="display: none;" >
                                                    </asp:Label>--%>
                                                  
                                                    <asp:Button ID="btnHidden" runat="server" Text="Button"  />
                                                    
                                                    </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                               <PagerTemplate>
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
                                                                                CssClass="txtSlider"  Text="<%# gvResult.PageIndex + 1 %>"
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
                                                <HeaderStyle CssClass="gvHeader" />
                                            </asp:GridView>
                                           <%-- <ajx:CollapsiblePanelExtender ID="cpnlResult" runat="server" TargetControlID="pnlResultBody"
                                                ExpandControlID="pnlResultHeader" CollapseControlID="pnlResultHeader" Collapsed="false"
                                                CollapsedSize="0" TextLabelID="lblResult" ImageControlID="imgcpnlResult" CollapsedImage="Images/Plus.gif"
                                                ExpandedImage="Images/Minus.gif">
                                            </ajx:CollapsiblePanelExtender>--%>
                                            
                                        </asp:Panel>



                                                                              
  
                                       
    </td>
    </tr>
    </table>
    
   <asp:Panel ID="pnlSearchHeader" runat="server" CssClass="cpnlHeader" BackColor="#FDBC2E"   >
                                            
                                        </asp:Panel>


    
                                        <asp:Panel ID="pnlSearchBody" runat="server" CssClass="cpnlBody"  
                                              style="width: 100%; height: 100%" >
  
                                            <table class="center" style="height:411px; width: 732px;" >
                                            <tr>
                                            <td class="style3">
                                                <asp:Label ID="lbleventtype" runat="server" Text="Event Type"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:DropDownList ID="ddleventtype" runat="server" Width="223px" Height="16px">
                                                   
                                                </asp:DropDownList>
                                                
                                                                                            </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style19">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style3">
                                                <asp:Label ID="lbleventdate" runat="server" Text="Event Date"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txteventdates" runat="server"  Width="222px"></asp:TextBox>
                                            </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style19">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style3">
                                                <asp:Label ID="lbleventtime" runat="server" Text="Event Time"></asp:Label>
                                            </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txteventhour" runat="server"  Width="47px" placeholder="HH" ></asp:TextBox>&nbsp:
                                                <asp:TextBox ID="txteventminute" runat="server" Width="52px" placeholder="MM"></asp:TextBox>&nbsp
                                                
                                                <asp:DropDownList ID="ddltime" runat="server" Width="96px" Height="16px"  >
                                               
                                                </asp:DropDownList>
                                                
                                            </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style19">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style3">
                                                <asp:Label ID="lblplace" runat="server" Text="Place"></asp:Label>
                                                 </td>
                                            <td class="style17">
                                                 <asp:DropDownList ID="ddlplace" runat="server" Width="223px" Height="22px">
                                                    
                                                </asp:DropDownList></td>
                                            <td class="style17">
                                            </td>
                                            <td class="style19">

                                           </td>
                                            </tr>


                                             <tr>
                                            <td class="style3">
                                                <asp:Label ID="lblcomments0" runat="server" Text="Comments"></asp:Label>
                                                 </td>
                                            <td class="style17">
                                                <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Width="206px" 
                                                    Height="80px"></asp:TextBox>
                                                </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style20">

                                           </td>
                                            </tr>



                                             <tr>
                                          
                                            <td class="style3">
                                                <asp:Button ID="btnCancel" runat="server" CssClass="btn" 
                                                   Text="Cancel" Width="69px" onclick="btnCancel_Click" />
                                                 </td>
                                            <td class="style17">
                                            </td>
                                            <td class="style20">

                                           </td>
                                            </tr>
                                                
                                            </table>
                                            
                                        </asp:Panel>

                                         </div>

     </ContentTemplate>
                                        </asp:UpdatePanel>

    </form>
</body>
</html>
