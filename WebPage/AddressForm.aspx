<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddressForm.aspx.cs" Inherits="WebPage.AddressForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        table.ortala {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <table align="center">

                <%--  FirstName --%>
                <tr>
                    <td class="ortala">

                        <asp:Label ID="lblFirstName" runat="server" Text="İsim : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox>
                    </td>

                </tr>

                <%-- LastName --%>
                <tr>
                    <td class="ortala">
                        <asp:Label ID="lblLastName" runat="server" Text="Soyisim : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="200px"></asp:TextBox></td>
                </tr>

                <%-- TC No --%>
                <tr>
                    <td class="ortala">
                        <asp:Label ID="lblIdNo" runat="server" Text="T.C. No : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtIdNo" runat="server" Width="200px"></asp:TextBox></td>
                </tr>

                <%-- Date --%>
                <tr>
                    <td class="ortala">
                        <asp:Label ID="lblDate" runat="server" Text="Eklenme Tarihi : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtIdNo0" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>

                <%-- Address --%>
                <tr>
                    <td class="ortala">
                        <asp:Label ID="lblAddress" runat="server" Text="Adres : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" Width="200px" Height="36px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>

                <%-- DataGrid --%>
                <tr>
                    <td class="ortala"></td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Ekle" Width="203px" class="btn btn-primary" OnClick="btnAdd_Click"  />
                    </td>
                </tr>


            </table>

            <table align="center">

                <%-- GridVies --%>
                <tr>
                    <td >
                        <asp:GridView ID="grdInfo" runat="server" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource" Width="386px">
                            <Columns>
                                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                                <asp:BoundField DataField="UserIdNo" HeaderText="UserIdNo" SortExpression="UserIdNo" />
                                <asp:BoundField DataField="UserFirstName" HeaderText="UserFirstName" SortExpression="UserFirstName" />
                                <asp:BoundField DataField="UserLastName" HeaderText="UserLastName" SortExpression="UserLastName" />
                                <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
                                <asp:BoundField DataField="UserDateOfAdd" HeaderText="UserDateOfAdd" SortExpression="UserDateOfAdd" />
                                <asp:BoundField DataField="UserAddress" HeaderText="UserAddress" SortExpression="UserAddress" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AddressRegistrationConnectionString %>" SelectCommand="SELECT * FROM [UserInfo]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>

        </div>
    </form>
        
</body>
</html>
