<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Small Payroll System.aspx.cs" Inherits="App_Dev101_Project.Small_Payroll_System" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('http://localhost:64379/Images/hex blue.jpg')">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            height: 613px;
        }
    </style>
</head>
 <h1 align="Center"<b style="font-family: 'Times New Roman', Times, serif; color: #000000; background-image: url('Images/download%202.jpg'); height: 47px;">Small Pay-roll System</b> </h1>
    <form id="form1" runat="server" style="background-image: url('Images/hex blue.jpg'); color: #FFFFFF;">
        <div style="height: 1px">
           
        </div>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    &nbsp;<asp:TextBox ID="txtUsername" runat="server"  placeholder="Username" style="margin-left: 37px" Width="171px" EnableTheming="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        &nbsp; <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" style="margin-left: 39px" Width="171px"></asp:TextBox>
        &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CheckBox ID="chckRemember" runat="server" Text="Remember me" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblBanner" runat="server" Text="."></asp:Label>
&nbsp;
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="log-in" ForeColor="Black" OnClick="Button1_Click" />
        <br />
        <div class="alert alert-dismissible alert-info">
            <strong>Attention:</strong> You need to be logged in to be able start to using the System :).</div>
    </form>
<body>
    </body>
</html>
