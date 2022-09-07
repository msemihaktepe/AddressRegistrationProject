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
    <script src="https://kit.fontawesome.com/0f0eaf10c9.js" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style2 {
            height: 35px;
        }

        #deneme {
            width: 1000px;
            height: 600px;
            padding: 90px;
            position: relative;
            margin: auto;
        }

        #deneme2 {
            width: 840px;
            height: 230px;
            position: relative;
            margin: auto;
        }

        .auto-style3 {
            margin-left: 40px;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div id="deneme">
            <div id="deneme2">
                <%-- Buttons --%>
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="btnSil" runat="server" Text="Sil" AutoPostback="true" Width="180px" class="btn btn-primary" OnClick="btnSil_Click" Height="45px" />
                        </td>

                        <td>

                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="width: 471px; height: 45px;">
                                Ekle
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Kayýt Ekle</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                                            <ContentTemplate>
                                                <div class="modal-body">

                                                    <%-- Forms --%>
                                                    <table align="center">


                                                        <%--  FirstName --%>
                                                        <tr>
                                                            <td class="auto-style2">

                                                                <asp:TextBox CssClass="form-control form-control-lg" ID="txtFirstName" runat="server" Width="450px" placeholder="Adýnýz" Height="20px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="FirstNameValid" runat="server" ErrorMessage="Ýsim Giriniz!"
                                                                    ForeColor="Red" ControlToValidate="txtFirstName" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                            </td>

                                                        </tr>

                                                        <%-- LastName --%>
                                                        <tr>
                                                            <td class="auto-style2">

                                                                <asp:TextBox CssClass="form-control form-control-lg" ID="txtLastName" runat="server" Width="450px" placeholder="Soyadýnýz" Height="20px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="LastNameValid" runat="server" ErrorMessage="Soyisim Giriniz!"
                                                                    ForeColor="Red" ControlToValidate="txtLastName" Display="Dynamic">*</asp:RequiredFieldValidator>

                                                            </td>
                                                        </tr>

                                                        <%-- TC No --%>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox CssClass="form-control form-control-lg" ID="txtIdNo" runat="server" Width="450px" placeholder="T.C. No"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="IdValid" runat="server" ErrorMessage="TC No Giriniz!"
                                                                    ForeColor="Red" ControlToValidate="txtIdNo" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                            </td>


                                                        </tr>

                                                        <%-- Email --%>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox CssClass="form-control form-control-lg" ID="txtEmail" runat="server" Width="450px" placeholder="E-Mail"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="EmailValid" runat="server" ErrorMessage="E-mail Giriniz!" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularMailValid" runat="server" ErrorMessage="E-Mail Yazýmý Doðru Deðil"
                                                                    ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                                            </td>


                                                        </tr>

                                                        <%-- Adres 1 --%>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox CssClass="form-control form-control-lg" ID="txtAddress1" runat="server" Width="450px" TextMode="MultiLine" placeholder="Adres 1" Height="40px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="Address1Valid" runat="server" ErrorMessage="Adres 1 - Mahalle Giriniz!"
                                                                    ForeColor="Red" ControlToValidate="txtAddress1" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>

                                                        <%-- Adres 2 --%>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox CssClass="form-control form-control-lg" ID="txtAddress2" runat="server" Width="450px" TextMode="MultiLine" placeholder="Adres 2" Height="40px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="Address2Valid" runat="server" ErrorMessage="Adres 2 - Sokak ve Daire No Giriniz!"
                                                                    ForeColor="Red" ControlToValidate="txtAddress2" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>


                                                        <%-- City --%>
                                                        <tr>
                                                            <td>

                                                                <asp:DropDownList CssClass="form-control form-control-lg" ID="ddlCity" runat="server" DataTextField="isim" Width="450px"
                                                                    DataValueField="isim" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="true">
                                                                </asp:DropDownList>

                                                                <%--<asp:TextBox CssClass="form-control form-control-lg" ID="txtCity" runat="server" Width="250px" placeholder="Ýl"></asp:TextBox>--%>

                                                                <asp:RequiredFieldValidator ID="CitValid" runat="server" ErrorMessage="Ýl Seçiniz" ForeColor="Red"
                                                                    ControlToValidate="ddlCity" Display="Dynamic">*</asp:RequiredFieldValidator>

                                                            </td>

                                                        </tr>

                                                        <%-- District --%>
                                                        <tr>
                                                            <td>
                                                                <%--<asp:TextBox CssClass="form-control form-control-lg" ID="txtDistrict" runat="server" Width="250px" placeholder="Ýlçe"></asp:TextBox>--%>
                                                                <asp:DropDownList CssClass="form-control form-control-lg" ID="ddlDistrict" Width="450px" runat="server" DataTextField="isim" DataValueField="isim"></asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="DistrictValid" runat="server" ErrorMessage="Ýlçe Giriniz!" ForeColor="Red"
                                                                    ControlToValidate="ddlDistrict" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>


                                                        <%-- Validation Summary --%>
                                                        <tr>
                                                            <td>

                                                                <asp:ValidationSummary CssClass="alert alert-danger alert-dismissible fade show" ID="ValidationSummary1" ForeColor="Red" runat="server" />

                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </ContentTemplate>

                                        </asp:UpdatePanel>


                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <asp:Button ID="btnAdd" runat="server" Text="Ekle" AutoPostback="true" class="btn btn-primary" OnClick="btnAdd_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <asp:Button ID="BtnUpdate" runat="server" Text="Güncelle" Width="180px" class="btn btn-primary" OnClick="BtnUpdate_Click" Height="45px" />
                        </td>
                    </tr>

                </table>


                <%-- GridViews --%>
                <table>
                    <tr>
                        <td class="auto-style3">
                            <asp:GridView ID="grdInfo" runat="server" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped"
                                AutoGenerateColumns="False" Width="386px" OnSelectedIndexChanged="grdInfo_SelectedIndexChanged">
                                <Columns>
                                    <asp:BoundField DataField="UserIdNo" HeaderText="T.C. No" />
                                    <asp:BoundField DataField="UserFirstName" HeaderText="Ýsim" />
                                    <asp:BoundField DataField="UserLastName" HeaderText="Soyisim" />
                                    <asp:BoundField DataField="UserEmail" HeaderText="Email" />
                                    <asp:BoundField DataField="UserDateOfAdd" HeaderText="Eklenme Tarihi" />
                                    <asp:BoundField DataField="UserAdress1" HeaderText="Adres 1" />
                                    <asp:BoundField DataField="UserAdress2" HeaderText="Adres 2" />
                                    <asp:BoundField DataField="UserCity" HeaderText="Ýl" />
                                    <asp:BoundField DataField="UserDistrict" HeaderText="Ýlçe" />
                                    <asp:CommandField ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>

                        </td>
                    </tr>
                </table>

            </div>
        </div>

    </form>


</body>
</html>
