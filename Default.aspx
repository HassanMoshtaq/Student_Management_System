<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HW5.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <br />
        <div class="row">
            <asp:AccessDataSource ID="adsStudentInfo" runat="server"
                DataFile="~/App_Data/Department.mdb"
                SelectCommand="SELECT DISTINCT * FROM [Students]"></asp:AccessDataSource>
            <div class="col-md-12 justify-content-center ">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" CssClass="table table-sm table-striped table-bordered" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-CssClass="table-dark"
                            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" Width="100%" PageSize="3"
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
            <div class="col-md-12 d-flex justify-content-center ">
                <asp:Button ID="Get_JsonBTN" CssClass="btn btn-success" runat="server" OnClick="Get_JsonBTN_Click" meta:resourcekey="Cover2JsonResx" Text="Convert Data Table to JSON" />
            </div>
            
        </div>
        <br />
        <div class="row">
            <div class="col form-group">
                <asp:TextBox ID="txtJson" CssClass="form-control" runat="server" Height="350px" TextMode="MultiLine" ></asp:TextBox>
            </div>
            <div class="col d-flex justify-content-center " style="height: 50vh">
                <div class="my-auto container ">
                    <div class="row">
                        <asp:Button ID="json2GridBTN" CssClass="btn btn-info " OnClick="json2GridBTN_Click" runat="server"  meta:resourcekey="Json2GridResx" Text="Bind JSON to Grid" />
                    </div>
                </div>
            </div>
            <div class="col">
                <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" CssClass="table table-sm table-striped table-bordered" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-CssClass="table-info"
                    GridLines="None" >
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" meta:resourcekey="StudentIDText" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName"  meta:resourcekey="FirstNameHeaderText" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName"  meta:resourcekey="LastNameHeaderText" />
                        <asp:BoundField DataField="Age" HeaderText="Age" meta:resourcekey="AgeHeaderText" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
