<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="Stylesheet" type="text/css" href="./stylesheet.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div><h1>
    
        Net Pay Calculator
    
   </h1> </div>
    <p>
        Hourly Wage:</p>
    <p>
        <asp:TextBox ID="hourlywageTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        Number of Hours Worked This Week:</p>
    <p>
        <asp:TextBox ID="hoursWorkedTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        Pre-Tax Deductions:</p>
    <p>
        <asp:TextBox ID="pretaxTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        After-Tax Deductions:
    </p>
    <p>
        <asp:TextBox ID="aftertaxTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="calcButton" runat="server" Text="Calculate Me!!" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="clearButton" runat="server" Text="Clear Me!!" />
    </p>
    <asp:Label ID="netpayLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
