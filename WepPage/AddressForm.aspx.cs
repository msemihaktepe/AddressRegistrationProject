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
            {
                ListGridView();
                DdlCitiesGetData();
                ddlSelectedView();
            }

        }

        public void DdlCitiesGetData()
        {
            ddlCity.DataSource = userInfoManager.GetCities();
            ddlCity.DataBind();
            ddlDistrict.Enabled = false;
        }

        public void DdlDistrictGetData()
        {
            ddlDistrict.DataSource = userInfoManager.GetDistrict().Where(x => x.il_no == ddlCity.SelectedIndex);
            ddlDistrict.DataBind();

        }



        public void ddlSelectedView()
        {
            ListItem liCity = new ListItem("İl Seçiniz", "-1");
            ddlCity.Items.Insert(0, liCity);

            ListItem liDistrict = new ListItem("İlçe Seçiniz", "-1");
            ddlDistrict.Items.Insert(0, liDistrict);

        }

        private void ListGridView()
        {
            grdInfo.DataSource = userInfoManager.GetUserData();
            grdInfo.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (ddlCity.SelectedIndex != 0 && ddlDistrict.SelectedIndex != 0)
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
                    UserCity = ddlCity.Text,
                    UserDistrict = ddlDistrict.Text
                });
            }
            else
            {
                Response.Write("İl- İlçe Seç");
            }

            ListGridView();
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
                UserCity = ddlCity.Text,
                UserDistrict = ddlDistrict.Text
            });
            ListGridView();
            Clean();
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtIdNo.Text))
                {
                    userInfoManager.DeleteUsers(txtIdNo.Text);
                    ListGridView();
                }
                Clean();
            }
            catch (ArgumentNullException)
            {
                Response.Write("Kayıt Bulunamadı");
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
            ddlCity.SelectedValue = HttpUtility.HtmlDecode(grdInfo.SelectedRow.Cells[7].Text);
        }

        private void Clean()
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtIdNo.Text = string.Empty;
            txtAddress1.Text = string.Empty;
            txtAddress2.Text = string.Empty;
            ddlCity.SelectedIndex = 0;
            if (ddlCity.SelectedIndex == 0)
            {
                ListItem liDistrict = new ListItem("İlçe Seçiniz", "-1");
                ddlDistrict.Items.Insert(0, liDistrict);

                ddlDistrict.SelectedIndex = 0;
                ddlDistrict.Enabled = false;
            }
        }

        protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCity.SelectedIndex == 0)
            {
                ListItem liDistrict = new ListItem("İlçe Seçiniz", "-1");
                ddlDistrict.Items.Insert(0, liDistrict);

                ddlDistrict.SelectedIndex = 0;
                ddlDistrict.Enabled = false;
            }
            else
            {
                ddlDistrict.Enabled = true;
                DdlDistrictGetData();

            }
        }
    }
}
