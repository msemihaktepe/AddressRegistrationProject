using Address.Business.Abstract;
using Address.DataAccess.Abstract;
using Address.DataAccess.Concrete;
using Address.Entities.Concrate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Address.Business.Concrete
{
    public class UserInfoManager : IUserInfoService
    {
        private IUserInfoDal _userInfoDal;
        public UserInfoManager(IUserInfoDal userInfoDal)
        {
            _userInfoDal = userInfoDal;
        }

        public void Add(UserInfo userInfo)
        {
            _userInfoDal.Add(userInfo);
        }        
    }
}
