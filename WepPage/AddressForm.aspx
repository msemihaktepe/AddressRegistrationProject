<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddressForm.aspx.cs" Inherits="WebPage.AddressForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>
<body>

    <form id="form1" runat="server">
        <div>
            <%-- Forms --%>
            <table align="center">

                <%--  FirstName --%>
                <tr>
                    <td>

                        <asp:Label ID="lblFirstName" runat="server" Text="�sim : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="200px" ></asp:TextBox><br />
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
                        <asp:Label ID="lblCity" runat="server" Text="�l : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>


                <%-- District --%>

                <tr>
                    <td>
                        <asp:Label ID="lblDistrict" runat="server" Text="�l�e : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtDistrict" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>


            <table align="center">
                <tr>
                    <td>
                        <asp:Button ID="btnSil" runat="server" Text="Sil" AutoPostback="true" Width="180px" class="btn btn-primary" OnClick="btnSil_Click" Height="45px" />
                    </td>

                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Ekle" AutoPostback="true" Width="540px" class="btn btn-primary" OnClick="btnAdd_Click" Height="45px" />

                        <asp:Button ID="BtnUpdate" runat="server" Text="G�ncelle" Width="180px" class="btn btn-primary" OnClick="BtnUpdate_Click" Height="45px" />
                    </td>
                </tr>

            </table>


            <table align="center">

                <%-- GridVies --%>
                <tr>
                    <td>
                        <asp:GridView ID="grdInfo" runat="server" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" AutoGenerateColumns="False" Width="386px" OnSelectedIndexChanged="grdInfo_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="UserIdNo" HeaderText="T.C. No" />
                                <asp:BoundField DataField="UserFirstName" HeaderText="�sim" />
                                <asp:BoundField DataField="UserLastName" HeaderText="Soyisim" />
                                <asp:BoundField DataField="UserEmail" HeaderText="Email" />
                                <asp:BoundField DataField="UserDateOfAdd" HeaderText="Eklenme Tarihi" />
                                <asp:BoundField DataField="UserAdress1" HeaderText="Adres 1" />
                                <asp:BoundField DataField="UserAdress2" HeaderText="Adres 2" />
                                <asp:BoundField DataField="UserCity" HeaderText="�l" />
                                <asp:BoundField DataField="UserDistrict" HeaderText="�l�e" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>

                    </td>
                </tr>
            </table>


        </div>
    </form>
  

</body>
</html>
