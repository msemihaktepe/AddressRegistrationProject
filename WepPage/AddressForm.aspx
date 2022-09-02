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


    <style type="text/css">
        .auto-style2 {
            height: 35px;
        }
    </style>


</head>
<body>

    <form id="form1" runat="server">
        <div>



            <%-- Forms --%>
            <table align="center">


                <%--  FirstName --%>
                <tr>
                    <td class="auto-style2">

                        <asp:TextBox CssClass="form-control form-control-lg" ID="txtFirstName" runat="server" Width="249px" placeholder="Adýnýz" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="FirstNameValid" runat="server" ErrorMessage="Ýsim Giriniz!" ForeColor="Red" ControlToValidate="txtFirstName" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <%-- LastName --%>
                    <td class="auto-style2">

                        <asp:TextBox CssClass="form-control form-control-lg" ID="txtLastName" runat="server" Width="250px" placeholder="Soyadýnýz" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="LastNameValid" runat="server" ErrorMessage="Soyisim Giriniz!" ForeColor="Red" ControlToValidate="txtLastName" Display="Dynamic">*</asp:RequiredFieldValidator>

                    </td>

                </tr>

                <%-- TC No --%>
                <tr>
                    <td colspan="2">
                        <asp:TextBox CssClass="form-control form-control-lg" ID="txtIdNo" runat="server" Width="500px" placeholder="T.C. No"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="IdValid" runat="server" ErrorMessage="TC No Giriniz!" ForeColor="Red" ControlToValidate="txtIdNo" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>


                </tr>


                <tr>
                    <td colspan="2">
                        <asp:TextBox CssClass="form-control form-control-lg" ID="txtEmail" runat="server" Width="500px" placeholder="E-Mail"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailValid" runat="server" ErrorMessage="E-mail Giriniz!" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularMailValid" runat="server" ErrorMessage="E-Mail Yazýmý Doðru Deðil" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>


                </tr>


                <tr>
                    <td>
                        <asp:TextBox CssClass="form-control form-control-lg" ID="txtAddress1" runat="server" Width="250px" TextMode="MultiLine" placeholder="Adres 1" Height="40px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Address1Valid" runat="server" ErrorMessage="Adres 1 - Mahalle Giriniz!" ForeColor="Red" ControlToValidate="txtAddress1" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control form-control-lg" ID="txtAddress2" runat="server" Width="250px" TextMode="MultiLine" placeholder="Adres 2" Height="40px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Address2Valid" runat="server" ErrorMessage="Adres 2 - Sokak ve Daire No Giriniz!" ForeColor="Red" ControlToValidate="txtAddress2" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>



                <%-- Email --%>
                <tr>
                    <td>
                        <%--<asp:TextBox CssClass="form-control form-control-lg" ID="txtCity" runat="server" Width="250px" placeholder="Ýl"></asp:TextBox>--%>
                        <asp:DropDownList CssClass="form-control form-control-lg" ID="ddlCity" runat="server" DataTextField="isim" DataValueField="il_no" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="true">                            
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="CitValid" runat="server" ErrorMessage="Ýl Seçiniz" ForeColor="Red" ControlToValidate="ddlCity" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <%--<asp:TextBox CssClass="form-control form-control-lg" ID="txtDistrict" runat="server" Width="250px" placeholder="Ýlçe"></asp:TextBox>--%>
                          <asp:DropDownList CssClass="form-control form-control-lg" ID="ddlDistrict" runat="server" DataTextField="isim" DataValueField="isim"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="DistrictValid" runat="server" ErrorMessage="Ýlçe Giriniz!" ForeColor="Red" ControlToValidate="ddlDistrict" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>


                <%-- City --%>

                <tr>
                    <td>

                        

                    </td>
                    <td>

                      



                    </td>
                </tr>


                <tr>
                    <td colspan="2">

                        <asp:ValidationSummary CssClass="alert alert-danger alert-dismissible fade show" ID="ValidationSummary1" ForeColor="Red" runat="server" />

                    </td>
                </tr>
            </table>



            <%-- Buttons --%>
            <table align="center">
                <tr>
                    <td>
                        <asp:Button ID="btnSil" runat="server" Text="Sil" AutoPostback="true" Width="180px" class="btn btn-primary" OnClick="btnSil_Click" Height="45px" />
                    </td>

                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Ekle" AutoPostback="true" Width="480px" class="btn btn-primary" OnClick="btnAdd_Click" Height="45px" />

                        <asp:Button ID="BtnUpdate" runat="server" Text="Güncelle" Width="180px" class="btn btn-primary" OnClick="BtnUpdate_Click" Height="45px" />
                    </td>
                </tr>

            </table>



            <%-- GridViews --%>
            <table align="center">


                <tr>
                    <td>
                        <asp:GridView ID="grdInfo" runat="server" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" AutoGenerateColumns="False" Width="386px" OnSelectedIndexChanged="grdInfo_SelectedIndexChanged">
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
    </form>



</body>
</html>
