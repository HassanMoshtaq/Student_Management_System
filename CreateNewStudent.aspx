<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateNewStudent.aspx.cs" Inherits="HW5.CreateNewStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table-primary" style="width:100%;">
        <tr>
            <td>
                First Name:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbFirstName" Display="Dynamic" 
                    ErrorMessage="* Enter first name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Last Name:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbLastName" Display="Dynamic" 
                    ErrorMessage="* Enter last name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Age:</td>
            <td>
                <asp:TextBox ID="tbAge" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="tbAge" Display="Dynamic" 
                    ErrorMessage="* Age should be between 1 and 100" MaximumValue="100" 
                    MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="tbAge" Display="Dynamic" ErrorMessage="* Enter age"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Gender:</td>
            <td>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Salary:</td>
            <td>
                <asp:TextBox ID="tbSalary" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="tbSalary" Display="Dynamic" 
                    ErrorMessage="* Salary may be between 0 and 100000" MaximumValue="100000" 
                    MinimumValue="0" Type="Currency"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="tbSalary" Display="Dynamic" ErrorMessage="* Enter salary"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Birthday:</td>
            <td>
                <asp:AccessDataSource ID="adsStudents" runat="server" 
                    DataFile="~/App_Data/Department.mdb" 
                    DeleteCommand="DELETE FROM [Students] WHERE [StudentID] = ?" 
                    InsertCommand="INSERT INTO [Students] ([FirstName], [LastName], [Age], [Gender], [Salary], [BirthDay]) VALUES (?, ?, ?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [Students]" 
                    UpdateCommand="UPDATE [Students] SET [FirstName] = ?, [LastName] = ?, [Age] = ?, [Gender] = ?, [Salary] = ?, [BirthDay] = ? WHERE [StudentID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="StudentID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Salary" Type="Decimal" />
                        <asp:Parameter Name="BirthDay" Type="DateTime" />
                        <asp:Parameter Name="StudentID" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="tbFirstName" Name="FirstName" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="tbLastName" Name="LastName" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="tbAge" Name="Age" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="ddlGender" Name="Gender" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="tbSalary" Name="Salary" PropertyName="Text" 
                            Type="Decimal" />
                        <asp:ControlParameter ControlID="calBirthDay" Name="BirthDay" 
                            PropertyName="SelectedDate" Type="DateTime" />
                    </InsertParameters>
                </asp:AccessDataSource>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/Department.mdb" 
                    DeleteCommand="DELETE FROM [Students] WHERE [StudentID] = ?" 
                    InsertCommand="INSERT INTO [Students] ([FirstName], [LastName], [Age], [Gender], [Salary], [BirthDay]) VALUES (?, ?, ?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [Students]" 
                    UpdateCommand="UPDATE [Students] SET [FirstName] = ?, [LastName] = ?, [Age] = ?, [Gender] = ?, [Salary] = ?, [BirthDay] = ? WHERE [StudentID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="StudentID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Salary" Type="Decimal" />
                        <asp:Parameter Name="BirthDay" Type="DateTime" />
                        <asp:Parameter Name="StudentID" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="tbFirstName" Name="FirstName" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="tbLastName" Name="LastName" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="tbAge" Name="Age" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="ddlGender" Name="Gender" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="tbSalary" Name="Salary" PropertyName="Text" 
                            Type="Decimal" />
                        <asp:ControlParameter ControlID="calBirthDay" Name="BirthDay" 
                            PropertyName="SelectedDate" Type="DateTime" />
                    </InsertParameters>
                </asp:AccessDataSource>
                <asp:Calendar ID="calBirthDay" runat="server" SelectedDate="1988-01-01" 
                    VisibleDate="1988-01-01"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnCreate" runat="server" onclick="btnCreate_Click" 
                    Text="Create" />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="An error occured: No records are inserted!" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
