<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddressForm.aspx.cs" Inherits="WebPage.AddressForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        
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
                    <td>
                        <asp:Label ID="lblLastName" runat="server" Text="Soyisim : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" Width="200px"></asp:TextBox></td>
                </tr>

                <%-- TC No --%>
                <tr>
                    <td>
                        <asp:Label ID="lblIdNo" runat="server" Text="T.C. No : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtIdNo" runat="server" Width="200px"></asp:TextBox></td>
                </tr>



                <%-- Email --%>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox></td>
                </tr>


                <%-- Address1 --%>

                <tr>
                    <td>
                        <asp:Label ID="lblAddress1" runat="server" Text="Adres 1 : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddress1" runat="server" Width="200px" Height="36px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>

                <%-- Address2 --%>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress2" runat="server" Text="Adres 2 : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddress2" runat="server" Width="200px" TextMode="MultiLine" Height="32px"></asp:TextBox>
                    </td>
                </tr>


                <%-- City --%>

                <tr>
                    <td>
                        <asp:Label ID="lblCity" runat="server" Text="İl : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>


                <%-- District --%>

                <tr>
                    <td>
                        <asp:Label ID="lblDistrict" runat="server" Text="İlçe : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtDistrict" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>

                <%-- Add Button --%>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Ekle" Width="203px" class="btn btn-primary" OnClick="btnAdd_Click" />
                    </td>
                </tr>           
        
            </table>

            <table align="center">

                <%-- GridVies --%>
                <tr>
                    <td>
                        <asp:GridView ID="grdInfo" runat="server" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" AutoGenerateColumns="False" Width="386px">
                            <Columns>
                                <asp:BoundField DataField="_UserId" HeaderText="ID" />
                                <asp:BoundField DataField="_UserFirstName" HeaderText="İsim" />
                                <asp:BoundField DataField="_UserLastName" HeaderText="Soyisim" />
                                <asp:BoundField DataField="_UserIdNo" HeaderText="T.C. No" />
                                <asp:BoundField DataField="_UserEmail" HeaderText="Email" />
                                <asp:BoundField DataField="_UserDateOfAdd" HeaderText="Eklenme Tarihi" />
                                <asp:BoundField DataField="_UserAddress1" HeaderText="Adres 1" />
                                <asp:BoundField DataField="_UserAddress2" HeaderText="Adres 2" />
                                <asp:BoundField DataField="_UserCity" HeaderText="İl" />
                                <asp:BoundField DataField="_UserDistrict" HeaderText="İlçe" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButtonUpdate" runat="server" OnClick="LinkButtonUpdate_Click">Güncelle</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButtonDelete" runat="server" OnClick="LinkButtonDelete_Click">Sil</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                    </td>
                </tr>
            </table>

        </div>
    </form>

</body>
</html>
