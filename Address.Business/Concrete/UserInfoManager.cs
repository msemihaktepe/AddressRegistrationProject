using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Address.DataAccess;
using Address.DataAccess.Concrete;
using Address.Entities.Concrate;
using Address.Entitiy.Concrete;

namespace Address.Business.Concrete
{
    public class UserInfoManager
    {
        AddressContexDal addressContexDal = new AddressContexDal();
        public List<UserInfo> GetUserData()
        {
            var listUserInfo = addressContexDal.GetData();
            return listUserInfo;
        }        

        public List<iller> GetCities()
        {
            var listCitiesData = addressContexDal.ddlCityBind();
            return listCitiesData;
        }

        public List<ilceler> GetDistrict()
        {
            var listDistrictData = addressContexDal.ddlDistrictBind();
            return listDistrictData;
        }

        public void AddData(UserInfo userInfo)
        {
            addressContexDal.AddData(userInfo);
        }

        public UserInfo GetUsersById(string id)
        {
            UserInfo userInfo = addressContexDal.GetUsersById(id);
            return userInfo;
        }

        public void UpdateUsers(UserInfo userInfo)
        {
            addressContexDal.UpdateUsers(userInfo);
        }

        public void DeleteUsers(string id)
        {
            addressContexDal.DeleteUsers(id);
        }

    }
}
