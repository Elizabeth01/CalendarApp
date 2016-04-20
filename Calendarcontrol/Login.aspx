<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Calendarcontrol.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 206px;
            height: 178px;
        }
        .style2
        {
            height: 178px;
            width: 207px;
        }
        .style3
        {
            height: 178px;
        }
        .style4
        {
            width: 206px;
        }
        .style5
        {
            width: 207px;
        }
        .style6
        {
            width: 206px;
            height: 26px;
        }
        .style7
        {
            width: 207px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
        <tr>
        <td class="style1">
        </td>
        <td class="style2"></td>
        <td class="style3" >
        </td>
        <td class="style3" ></td>

        </tr>
        <tr>
        <td class="style4" >
            &nbsp;</td>
        <td class="style5" >
            <asp:Label ID="lbluname" runat="server" Text="UserName"></asp:Label>
        </td>
        <td >
            <asp:TextBox ID="txtuname" runat="server" ></asp:TextBox>
        </td>
        <td ></td>

        </tr>


        <tr>
        <td class="style6" >
        </td>
        <td class="style7" >
            <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
            </td>
        <td class="style8" >
            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        </td>
        <td class="style8" ></td>

        </tr>



        <tr>
        <td  >
            &nbsp;</td>
        <td  >
            <asp:Button ID="btnlogin" runat="server" Text="Login" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" />
        </td>
        <td >
        </td>
        <td ></td>

        </tr>
        
        </table>
    </div>
    </form>
</body>
</html>
