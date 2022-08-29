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
            <asp:Button ID="btnAdd" runat="server" Text="Ekle" AutoPostback="true" Width="540px" class="btn btn-primary" OnClick="btnAdd_Click" Height="45px" />

          




            <table align="center">
                <tr>
                    <td>
                        <asp:Button ID="btnSil" runat="server" Text="Sil" AutoPostback="true" Width="180px" class="btn btn-primary" OnClick="btnSil_Click" Height="45px" />
                    </td>
                    <td>
                          <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="width: 545px; height: 45px">
                Ekle
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Kullanýcý Bilgileri</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <%-- Forms --%>
                            <table align="center">

                                <%--  FirstName --%>
                                <tr>
                                    <td>

                                        <asp:Label ID="lblFirstName" runat="server" Text="Ýsim : "></asp:Label>
                                    </td>
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
                                        <asp:Label ID="lblCity" runat="server" Text="Ýl : "></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>


                                <%-- District --%>

                                <tr>
                                    <td>
                                        <asp:Label ID="lblDistrict" runat="server" Text="Ýlçe : "></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="txtDistrict" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Geri</button>
                            <button type="button" class="btn btn-primary">Kaydet</button>
                        </div>
                    </div>
                </div>
            </div>

                        <asp:Button ID="BtnUpdate" runat="server" Text="Güncelle" Width="180px" class="btn btn-primary" OnClick="BtnUpdate_Click" Height="45px" />
                    </td>
                </tr>

            </table>


            <table align="center">

                <%-- GridVies --%>
                <tr>
                    <td>
                        <asp:GridView ID="grdInfo" runat="server" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" AutoGenerateColumns="False" Width="386px" OnSelectedIndexChanged="grdInfo_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="_UserIdNo" HeaderText="T.C. No" />
                                <asp:BoundField DataField="_UserFirstName" HeaderText="Ýsim" />
                                <asp:BoundField DataField="_UserLastName" HeaderText="Soyisim" />
                                <asp:BoundField DataField="_UserEmail" HeaderText="Email" />
                                <asp:BoundField DataField="_UserDateOfAdd" HeaderText="Eklenme Tarihi" />
                                <asp:BoundField DataField="_UserAddress1" HeaderText="Adres 1" />
                                <asp:BoundField DataField="_UserAddress2" HeaderText="Adres 2" />
                                <asp:BoundField DataField="_UserCity" HeaderText="Ýl" />
                                <asp:BoundField DataField="_UserDistrict" HeaderText="Ýlçe" />
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
