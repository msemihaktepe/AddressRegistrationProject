using Address.DataAccess.Abstract;
using Address.Entities.Concrate;
using Address.Entitiy.Abstract;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Address.DataAccess.Concrete
{
    public class EfUserInfoDal : IUserInfoDal
    {
        public void Add(UserInfo entity)
        {
            using (AddressContext addressContext=new AddressContext())
            {
                var addedEntity = addressContext.Entry(entity);
                addedEntity.State = EntityState.Added;
                addressContext.SaveChanges();
            }
        }

        public void Delete(UserInfo entity)
        {
            throw new NotImplementedException();
        }

        public void Update(UserInfo entity)
        {
            throw new NotImplementedException();
        }
    }
}
