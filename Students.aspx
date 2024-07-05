<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%-- Bootstrap --%>
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.3/dist/lux/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <%--<link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <br />
        <div class="row">
            <div class="col-md-12">
                <asp:HyperLink ID="HyperLink1" CssClass="btn btn-warning" runat="server" meta:resourcekey="CreateHyplResx"
                    NavigateUrl="~/CreateNewStudent.aspx"><i class="bi bi-person-plus"></i> Create New Student</asp:HyperLink>
            </div>
        </div>
        <div class="row table-responsive">
            <div class="col-md-12  justify-content-center">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-sm table-striped table-bordered" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-CssClass="table-dark"
                            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4"
                            DataKeyNames="StudentID" DataSourceID="adsStudents" ForeColor="#333333"
                            GridLines="None" PageSize="5">
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"
                                    ShowSelectButton="True" meta:resourcekey="CommandText"  />
                                <asp:BoundField DataField="StudentID" HeaderText="StudentID" meta:resourcekey="StudentIDText"
                                    InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" meta:resourcekey="FirstNameHeaderText"
                                    SortExpression="FirstName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName" meta:resourcekey="LastNameHeaderText"
                                    SortExpression="LastName" />
                                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" meta:resourcekey="AgeHeaderText" />
                                <asp:TemplateField HeaderText="Gender" SortExpression="Gender" meta:resourcekey="GenderHeaderText">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server"
                                            SelectedValue='<%# Bind("Gender") %>'>
                                            <asp:ListItem Value="M" meta:resourcekey="GenderMaleText">Male</asp:ListItem>
                                            <asp:ListItem Value="F" meta:resourcekey="GenderMaleText">Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Salary" HeaderText="Salary" meta:resourcekey="SalaryHeaderText"
                                    SortExpression="Salary" />
                                <asp:TemplateField HeaderText="BirthDay" SortExpression="BirthDay" meta:resourcekey="BirthDayHeaderText">
                                    <EditItemTemplate>
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White"
                                            BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest"
                                            Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="20px"
                                            SelectedDate='<%# Bind("BirthDay") %>' Width="30px">
                                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                            <SelectorStyle BackColor="#CCCCCC" />
                                            <WeekendDayStyle BackColor="#FFFFCC" />
                                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            <OtherMonthDayStyle ForeColor="#808080" />
                                            <NextPrevStyle VerticalAlign="Bottom" />
                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                        </asp:Calendar>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("BirthDay") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 d-flex justify-content-center">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" AllowPaging="true"
                            CellPadding="4" DataKeyNames="StudentID" DataSourceID="adsStudentInfo" CssClass="table table-sm table-primary"
                            ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <CommandRowStyle CssClass="bg-info" Font-Bold="True" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <Fields>
                                <asp:BoundField DataField="StudentID" HeaderText="StudentID" meta:resourcekey="StudentIDText"
                                    InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" meta:resourcekey="FirstNameHeaderText"
                                    SortExpression="FirstName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName" meta:resourcekey="LastNameHeaderText"
                                    SortExpression="LastName" /> 
                                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" meta:resourcekey="AgeHeaderText" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" meta:resourcekey="GenderHeaderText"
                                    SortExpression="Gender" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" meta:resourcekey="SalaryHeaderText"
                                    SortExpression="Salary" />
                                <asp:BoundField DataField="BirthDay" HeaderText="BirthDay" meta:resourcekey="BirthDayHeaderText"
                                    SortExpression="BirthDay" />
                            </Fields>
                            <HeaderStyle BackColor="#8b6dac" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:DetailsView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 d-flex justify-content-center">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" CssClass="table table-lg table-striped table-bordered" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-CssClass="table-dark"
                            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" Width="100%"
                            DataSourceID="adsStudentInfo" ForeColor="#333333"
                            GridLines="None" DataKeyNames="StudentID">
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="StudentID" HeaderText="StudentID" meta:resourcekey="StudentIDText"
                                    InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" meta:resourcekey="FirstNameHeaderText"
                                    SortExpression="FirstName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName" meta:resourcekey="LastNameHeaderText"
                                    SortExpression="LastName" />
                                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" meta:resourcekey="AgeHeaderText" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" meta:resourcekey="GenderHeaderText"
                                    SortExpression="Gender" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" meta:resourcekey="SalaryHeaderText"
                                    SortExpression="Salary" />
                                <asp:BoundField DataField="BirthDay" HeaderText="BirthDay" meta:resourcekey="BirthDayHeaderText"
                                    SortExpression="BirthDay" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>

    <asp:AccessDataSource ID="adsStudents" runat="server"
        DataFile="~/App_Data/Department.mdb"
        DeleteCommand="DELETE FROM [Students] WHERE [StudentID] = ?"
        InsertCommand="INSERT INTO [Students] ([StudentID], [FirstName], [LastName], [Age], [Gender], [Salary], [BirthDay]) VALUES (?, ?, ?, ?, ?, ?, ?)"
        SelectCommand="SELECT * FROM [Students] ORDER BY [Gender], [Salary] DESC"
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
            <asp:Parameter Name="StudentID" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="BirthDay" Type="DateTime" />
        </InsertParameters>
    </asp:AccessDataSource>
    <br />

    <br />
    <br />

    <asp:AccessDataSource ID="adsStudentInfo" runat="server"
        DataFile="~/App_Data/Department.mdb"
        SelectCommand="SELECT DISTINCT * FROM [Students]"></asp:AccessDataSource>
    <br />
    <br />

    <asp:AccessDataSource ID="AccessDataSource1" runat="server"
        DataFile="~/App_Data/Department.mdb"
        SelectCommand="SELECT * FROM [Students]"
        DeleteCommand="DELETE FROM [Students] WHERE [StudentID] = ?"
        InsertCommand="INSERT INTO [Students] ([FirstName], [LastName], [Age], [Gender], [Salary], [BirthDay]) VALUES (?, ?, ?, ?, ?, ?)"
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
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="BirthDay" Type="DateTime" />
        </InsertParameters>
    </asp:AccessDataSource>
    <br />
    <br />
    <%--<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False"
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
        CellPadding="4" DataKeyNames="StudentID" DataSourceID="AccessDataSource2"
        Height="50px" Width="125px">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <Fields>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID"
                InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName"
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName"
                SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender"
                SortExpression="Gender" />
            <asp:BoundField DataField="Salary" HeaderText="Salary"
                SortExpression="Salary" />
            <asp:BoundField DataField="BirthDay" HeaderText="BirthDay"
                SortExpression="BirthDay" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"
                ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:DetailsView>--%>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server"
        DataFile="~/App_Data/Department.mdb"
        DeleteCommand="DELETE FROM [Students] WHERE [StudentID] = ?"
        InsertCommand="INSERT INTO [Students] ([StudentID], [FirstName], [LastName], [Age], [Gender], [Salary], [BirthDay]) VALUES (?, ?, ?, ?, ?, ?, ?)"
        SelectCommand="SELECT * FROM [Students] WHERE ([StudentID] = ?)"
        UpdateCommand="UPDATE [Students] SET [FirstName] = ?, [LastName] = ?, [Age] = ?, [Gender] = ?, [Salary] = ?, [BirthDay] = ? WHERE [StudentID] = ?">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" Name="StudentID"
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
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
            <asp:Parameter Name="StudentID" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="BirthDay" Type="DateTime" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>

