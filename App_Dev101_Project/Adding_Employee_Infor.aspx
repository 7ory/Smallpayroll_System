<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adding_Employee_Infor.aspx.cs" Inherits="App_Dev101_Project.Adding_Employee_Infor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" style="background-color: #FFFFFF; background-image: url('http://localhost:64379/Images/hex blue.jpg');">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 { 
            height: 29px;
        }
    </style>
</head>
<h1 align="Center"<b style="font-family: 'Times New Roman', Times, serif; color: #000000; background-image: url('Images/download%202.jpg'); height: 45px;">Small Pay-roll System</b> </h1>

    
        <form id="form1" runat="server" style="background-image: url('http://localhost:64379/Images/hex%20blue.jpg'); color: #FFFFFF; height: 1005px; margin-top: 0px;" draggable="true" enableviewstate="True">

    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Employee Details</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;Employee SA ID:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td> <asp:TextBox ID="TxtSAID"  runat="server" placeholder="Enter Work ID" Width="253px"></asp:TextBox>
                    </td>
                    <td> &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee ID :</td>
                    <td>
                        <asp:TextBox ID="TxtID" runat="server" placeholder="Work ID" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Fisrtname :&nbsp;&nbsp;&nbsp;</td>
                    <td>
            <asp:TextBox ID="TxtFName"  runat="server" placeholder="Enter Firstname" Width="252px" OnTextChanged="TxtFName_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="PaySlip" BorderStyle="Double"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Middlename:</td>
                    <td>
                        <asp:TextBox ID="TxtMiddleName" runat="server" placeholder="Middlename" Width="251px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Lastname:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
        <asp:TextBox ID="TxtSurname" runat="server" placeholder="Enter Surname" Width="252px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblEmployee" runat="server" Text="Employee:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Date Of Birth:</td>
                    <td>
                        <asp:TextBox ID="TxtDOBYear" runat="server" placeholder="DD/MM/YY" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPosition" runat="server" Text="Position:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblBranch" runat="server" Text="Banch"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Address 1:</td>
                    <td>
                        <asp:TextBox ID="TxtAddress1" runat="server" placeholder="City,Surbub,Street,Housenumber" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblEarned" runat="server" Text="Earned:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Address 2:</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtAddress2" runat="server" placeholder="City,Surbub,Street,Housenumber" Width="260px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee City:</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtCity" runat="server" placeholder="Name of the City" Width="260px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Province:</td>
                    <td colspan="2">
                        &nbsp;
                        <asp:DropDownList ID="DrpProvince" class="btn btn-info"  runat="server" placeholder="Select Province" Width="260px">
                            <asp:ListItem Selected="True">Select Province</asp:ListItem>
                            <asp:ListItem>Eastern Cape</asp:ListItem>
                            <asp:ListItem>Free State</asp:ListItem>
                            <asp:ListItem>Gauteng</asp:ListItem>
                            <asp:ListItem>KwaZulu-Natal</asp:ListItem>
                            <asp:ListItem>Limpopo</asp:ListItem>
                            <asp:ListItem>Mpumalanga</asp:ListItem>
                            <asp:ListItem>Northern Cape</asp:ListItem>
                            <asp:ListItem>North West</asp:ListItem>
                            <asp:ListItem>Western Cape</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Cell number:</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtCellnumber" runat="server" placeholder="Personal contact number" Width="260px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Date Of Hire:</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtDOBHire" runat="server" placeholder="DD/MM/YY" Width="260px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Pay Hourly Rate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td colspan="2">
        <asp:TextBox ID="TxtRate" runat="server" placeholder="e.g 56.00" Width="260px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Week Work Number:</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtWeekNumber" runat="server" placeholder="e.g 4" Width="260px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Hours worked this week:&nbsp;&nbsp;&nbsp;</td>
                    <td colspan="2">
        <asp:TextBox ID="TxtHours" runat="server" placeholder="e.g 26" Width="260px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee Position:</td>
                    <td colspan="2">
        <asp:DropDownList ID="cmbPosition"  class="btn btn-info" runat="server" Width="260px">
            <asp:ListItem Selected="True">Choose position</asp:ListItem>
            <asp:ListItem>Civil Engineer</asp:ListItem>
            <asp:ListItem>Safety Director</asp:ListItem>
            <asp:ListItem>Construction Engineer</asp:ListItem>
            <asp:ListItem>Building Services Director</asp:ListItem>
            <asp:ListItem>Senior Manager – Construction</asp:ListItem>
            <asp:ListItem>Chief Construction Officer</asp:ListItem>
            <asp:ListItem>Brick Layer</asp:ListItem>
        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee&nbsp;Branch:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td colspan="2"> 
        <asp:DropDownList ID="cmbBranch"  class="btn btn-info" runat="server" Width="260px" OnSelectedIndexChanged="cmbBranch_SelectedIndexChanged">
            <asp:ListItem Selected="True">Choose Branch</asp:ListItem>
            <asp:ListItem>GreyTown</asp:ListItem>
        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Employee bank name:&nbsp;&nbsp;</td>
                    <td colspan="2">
        <asp:DropDownList ID="DrpBank" class="btn btn-info" runat="server" Width="260px">
            <asp:ListItem Selected="True">Choose Bank</asp:ListItem>
            <asp:ListItem>Capitec Bank</asp:ListItem>
            <asp:ListItem>Standard Bank</asp:ListItem>
            <asp:ListItem>Absa</asp:ListItem>
            <asp:ListItem>FNB</asp:ListItem>
            <asp:ListItem>Bidvest Bank</asp:ListItem>
            <asp:ListItem>Tyma Bank</asp:ListItem>
            <asp:ListItem>African Bank</asp:ListItem>
            <asp:ListItem>iThala</asp:ListItem>
        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee Account number:&nbsp;&nbsp;</td>
                    <td colspan="2" class="auto-style1"> <asp:TextBox ID="TxtAccNum" runat="server" placeholder="Account number" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">
        <asp:Button ID="btnPrintSLip" class="btn btn-success" runat="server" Text="Print Slip" OnClick="Button2_Click" ForeColor="Black" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="Button1" class="btn btn-info" runat="server" OnClick="Button1_Click" Text="Log-Out" BorderStyle="Outset" ForeColor="Black" />
                    </td>
                    <td>&nbsp;&nbsp;<asp:Button  ID="btnCaptureInfor" class="btn btn-danger" runat="server" Text="Save and Submit" OnClick="btnCaptureInfor_Click" ForeColor="Black" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnViewEmployees" class="btn btn-secondary" runat="server" Text="View Employees" ForeColor="Black" OnClick="BtnViewEmployees_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            

            <br />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
    </form>
<body >

    
        </form>
</body>
</html>
