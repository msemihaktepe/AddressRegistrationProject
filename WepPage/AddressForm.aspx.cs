using Address.DataAccess.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WepPage;

namespace WebPage
{
    public partial class AddressForm : System.Web.UI.Page
    {
        // private AddressEntities ae = new AddressEntities();
        AddressRegistrationEntities Connection = new AddressRegistrationEntities();


        protected void Page_Load(object sender, EventArgs e)
        {
            FillData();
        }

        private void FillData()
        {
            this.grdInfo.DataSource = Connection.UserInfo.Select
                (p => new
                {

                    _UserIdNo = p.UserIdNo,
                    _UserFirstName = p.UserFirstName,
                    _UserLastName = p.UserLastName,
                    _UserEmail = p.UserEmail,
                    _UserDateofAdd = p.UserDateOfAdd,
                    _UserAddress1 = p.UserAdress1,
                    _UserAddress2 = p.UserAdress2,
                    _UserCity = p.UserCity,
                    _UserDistrict = p.UserDistrict
                }).ToList();
            this.grdInfo.DataBind();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {



            UserInfo UserAdd = new UserInfo()
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
            };


            try
            {
                Connection.UserInfo.Add(UserAdd);
                Connection.SaveChanges();
                FillData();
                Response.Write("Kayıt Başarılı.");
            }
            catch (Exception)
            {

                Response.Write("Kayıt Başarısız.");
            }


        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {


        }

        protected void btnSil_Click(object sender, EventArgs e)
        {

            var query = (from Check in Connection.UserInfo
                         where Check.UserIdNo == txtIdNo.Text
                         select Check).ToList();
            if (query.Count == 1)
            {
                Connection.UserInfo.Remove(query[0]);
                Connection.SaveChanges();
                FillData();
                Response.Write("Silindi");
            }
            else
            {
                Response.Write("Silinemedi");
            }
            clean();

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

        private void clean()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtIdNo.Text = "";
            txtAddress1.Text = "";
            txtAddress2.Text = "";
            txtCity.Text = "";
            txtDistrict.Text = "";
        }


    }
}