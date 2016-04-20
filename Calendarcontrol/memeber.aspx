<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="memeber.aspx.cs" Inherits="Calendarcontrol.memeber" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Go Back" 
            Width="81px" />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" BackColor="White" 
BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
<FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
<HeaderStyle BackColor="#FDBC2E" Font-Bold="True" ForeColor="#FFFFCC" />
<PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
<RowStyle BackColor="White" ForeColor="#330099" />
<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
<SortedAscendingCellStyle BackColor="#FEFCEB" />
<SortedAscendingHeaderStyle BackColor="#AF0101" />
<SortedDescendingCellStyle BackColor="#F6F0C0" />
<SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
