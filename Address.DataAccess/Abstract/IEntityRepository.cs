using Address.Entitiy.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Address.DataAccess.Abstract
{
    public interface IEntityRepository<T> where T:class , IEntity, new()
    {
        
        void Add(T entity);
        void Update(T entity);
        void Delete(T entity);
    }
}
