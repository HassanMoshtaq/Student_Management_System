<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Json2Grid.aspx.cs" Inherits="HW5.Json2Grid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">  
    <div>  
        <h2>Bind GridView From JSON Object (Converted In to Dynamic Object [dynamic keyword])</h2>  
        <asp:GridView ID="grdJSON2Grid" runat="server" BackColor="White" BorderColor="#3399FF"  
            BorderStyle="Dotted" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Member ID" HeaderText="Member ID" SortExpression="Member ID" />
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                <asp:BoundField DataField="Registered Email" HeaderText="Registered Email" SortExpression="Registered Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="MailState" HeaderText="MailState" SortExpression="MailState" />
                <asp:BoundField DataField="MailPostcode" HeaderText="MailPostcode" SortExpression="MailPostcode" />
                <asp:BoundField DataField="Engagement" HeaderText="Engagement" SortExpression="Engagement" />
            </Columns>
        </asp:GridView>  
  
        <br />  
        <br />  
         <h2>Bind GridView From JSON Object (Converted In to DataTable Object [DataTable])</h2>  
    </div>  
        <asp:GridView ID="grdJSON2Grid2" runat="server" BackColor="White" BorderColor="#3399FF"  
            BorderStyle="Dotted" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Member ID" HeaderText="Member ID" SortExpression="Member ID" />
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                <asp:BoundField DataField="Registered Email" HeaderText="Registered Email" SortExpression="Registered Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="MailState" HeaderText="MailState" SortExpression="MailState" />
                <asp:BoundField DataField="MailPostcode" HeaderText="MailPostcode" SortExpression="MailPostcode" />
                <asp:BoundField DataField="Engagement" HeaderText="Engagement" SortExpression="Engagement" />
            </Columns>
        </asp:GridView>  
  
    </form>  
</body>
</html>
