using Address.Entities.Concrate;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Address.DataAccess.Concrete
{
    public class AddressContexDal
    {
        AddressContext context = new AddressContext();


        public List<UserInfo> GetData()
        {
            return context.UserInfoes.ToList();
        }

        public void AddData(UserInfo userInfo)
        {
            context.UserInfoes.Add(userInfo);
            context.SaveChanges();
        }

        public UserInfo GetUsersById(string id)
        {
            UserInfo userInfo = context.UserInfoes.Find(id);
            return userInfo;
        }

        public void UpdateUsers(UserInfo userInfo)
        {

            context.Entry(userInfo).State = EntityState.Modified;
            context.SaveChanges();
        }

        public void DeleteUsers(string id)
        {
           
            var userDelete = context.UserInfoes.Find(id);
            context.UserInfoes.Remove(userDelete);
            context.SaveChanges();
        }


    }
}
