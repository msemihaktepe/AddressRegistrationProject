using Address.Entities.Concrate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Address.Business.Abstract
{
    public interface IUserInfoService
    {
        void Add(UserInfo userInfo);       
    }
}
