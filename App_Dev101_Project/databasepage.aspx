<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="databasepage.aspx.cs" Inherits="App_Dev101_Project.databasepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PayrollSystemConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [EmployeeDetails]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                    <asp:BoundField DataField="EmployeeSAID" HeaderText="EmployeeSAID" SortExpression="EmployeeSAID" />
                    <asp:BoundField DataField="EmployeeFirstname" HeaderText="EmployeeFirstname" SortExpression="EmployeeFirstname" />
                    <asp:BoundField DataField="EmployeeMiddlename" HeaderText="EmployeeMiddlename" SortExpression="EmployeeMiddlename" />
                    <asp:BoundField DataField="EmployeeLastname" HeaderText="EmployeeLastname" SortExpression="EmployeeLastname" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="EmployeeAddress1" HeaderText="EmployeeAddress1" SortExpression="EmployeeAddress1" />
                    <asp:BoundField DataField="EmployeeAddress2" HeaderText="EmployeeAddress2" SortExpression="EmployeeAddress2" />
                    <asp:BoundField DataField="EmployeeCity" HeaderText="EmployeeCity" SortExpression="EmployeeCity" />
                    <asp:BoundField DataField="EmployeeProvince" HeaderText="EmployeeProvince" SortExpression="EmployeeProvince" />
                    <asp:BoundField DataField="EmployeeCellNumber" HeaderText="EmployeeCellNumber" SortExpression="EmployeeCellNumber" />
                    <asp:BoundField DataField="EmployeeDateOfHire" HeaderText="EmployeeDateOfHire" SortExpression="EmployeeDateOfHire" />
                    <asp:BoundField DataField="EmployeePayHourlyRate" HeaderText="EmployeePayHourlyRate" SortExpression="EmployeePayHourlyRate" />
                    <asp:BoundField DataField="WorkWeekNumber" HeaderText="WorkWeekNumber" SortExpression="WorkWeekNumber" />
                    <asp:BoundField DataField="EmployeeHoursWorkedDuringTheWeek" HeaderText="EmployeeHoursWorkedDuringTheWeek" SortExpression="EmployeeHoursWorkedDuringTheWeek" />
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                    <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                    <asp:BoundField DataField="EmployeeBankName" HeaderText="EmployeeBankName" SortExpression="EmployeeBankName" />
                    <asp:BoundField DataField="EmployeeAccountNumber" HeaderText="EmployeeAccountNumber" SortExpression="EmployeeAccountNumber" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
