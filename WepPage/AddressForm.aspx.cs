using Address.DataAccess.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Address.Business;
using Address.Business.Concrete;
using Address.Entities.Concrate;

namespace WebPage
{
    public partial class AddressForm : System.Web.UI.Page
    {
        UserInfoManager userInfoManager = new UserInfoManager();
        AddressContext addressContext = new AddressContext();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListGridView();

        }

        private void ListGridView()
        {
            var listUser = userInfoManager.GetUserData();
            grdInfo.DataSource = listUser;
            grdInfo.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            userInfoManager.AddData(new UserInfo
            {
                UserFirstName = txtFirstName.Text,
                UserLastName = txtLastName.Text,
                UserEmail = txtEmail.Text,
                UserIdNo = txtIdNo.Text,
                UserAdress1 = txtAddress1.Text,
                UserDateOfAdd = DateTime.Now,
                UserAdress2 = txtAddress2.Text,
                UserCity = txtCity.Text,
                UserDistrict = txtDistrict.Text
            });
            ListGridView();
            Response.Write("Kayıt Başarılı.");
            Clean();
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

            userInfoManager.UpdateUsers(new UserInfo
            {
                UserFirstName = txtFirstName.Text,
                UserLastName = txtLastName.Text,
                UserEmail = txtEmail.Text,
                UserIdNo = txtIdNo.Text,
                UserAdress1 = txtAddress1.Text,
                UserDateOfAdd = DateTime.Now,
                UserAdress2 = txtAddress2.Text,
                UserCity = txtCity.Text,
                UserDistrict = txtDistrict.Text
            });
            ListGridView();
            Clean();
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtIdNo.Text))
            {
                userInfoManager.DeleteUsers(txtIdNo.Text);
                ListGridView();
                Clean();
            }

        }




        protected void grdInfo_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtFirstName.Text = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[1].Text);
            txtLastName.Text = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[2].Text);
            txtEmail.Text = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[3].Text);
            txtIdNo.Text = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[0].Text);
            txtAddress1.Text = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[5].Text);
            txtAddress2.Text = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[6].Text);
            txtCity.Text = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[7].Text);
            txtDistrict.Text = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[8].Text);
        }
        private void Clean()
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtIdNo.Text = string.Empty;
            txtAddress1.Text = string.Empty;
            txtAddress2.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtDistrict.Text = string.Empty;
        }


    }
}