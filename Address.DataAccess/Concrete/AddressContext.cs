using Address.Entities.Concrate;
using System.Data.Entity;

namespace Address.DataAccess.Concrete
{
    public class AddressContext : DbContext
    {
        public DbSet<UserInfo> UserInfoes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<AddressContext>(null);
            base.OnModelCreating(modelBuilder);
        }

    }
}
