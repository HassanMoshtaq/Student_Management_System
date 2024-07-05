<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datatable2JSON.aspx.cs" Inherits="HW5.Datatable2JSON" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>

        </div>

         <div>

        </div>

         <div>

        </div>
        <div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None" PageSize="5">
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
        </div>
       
        <div>

        </div>
          <div>

        </div>
          <div>

              <table style="width:100%;">
                  <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>

             <asp:Button ID="btn_dt2json" runat="server" OnClick="btn_dt2json_Click" Text="Step1: Convert Data Table to JSON" />

                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>
             <asp:Button ID="btnJson2Grid" runat="server" OnClick="btnJson2Grid_Click" Text="Step2:  Bind JSON to Grid" Width="254px" />

                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
              </table>

        </div>
         <div>

             <br />

        </div>
          <div>

        </div>
          <div>

        </div>
         <div>

             <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
             <asp:Label ID="lblinfo" runat="server" Text="Label"></asp:Label>
             <br />
             <asp:Label ID="lblDisplayJson" runat="server" Text="JSON Generated:"></asp:Label>
             <br />
             <asp:TextBox ID="txtJson" runat="server" Height="200px" TextMode="MultiLine" Width="457px"></asp:TextBox>

        </div>
    </form>
</body>
</html>
