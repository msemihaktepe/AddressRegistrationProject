using Address.Entities.Concrate;
using Address.Entitiy.Concrete;
using System.Data.Entity;

namespace Address.DataAccess.Concrete
{
    public class AddressContext : DbContext
    {
        public DbSet<UserInfo> UserInfoes { get; set; }
        public DbSet<iller> illers { get; set; }
        public DbSet<ilceler> ilcelers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<AddressContext>(null);            
            base.OnModelCreating(modelBuilder);
        }     


    }
}
