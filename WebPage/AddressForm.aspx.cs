using Address.Business.Abstract;
using Address.Business.Concrete;
using Address.DataAccess.Concrete;
using Address.Entities.Concrate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPage
{
    public partial class AddressForm : System.Web.UI.Page
    {
        private AddressEntities ae = new AddressEntities();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                FillData();                
            }

        }

        private void FillData()
        {
            this.grdInfo.DataSource = ae.UserInfoes.Select
                (p => new
                {
                    _UserId = p.UserId,
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
        }

        protected void LinkButtonUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButtonDelete_Click(object sender, EventArgs e)
        {

        }
    }
}