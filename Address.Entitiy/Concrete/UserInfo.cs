using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Address.Entities.Concrate
{
    public class UserInfo
    {
        public int UserId { get; set; }
        public string UserIdNo { get; set; }
        public string UserFirstName { get; set; }
        public string UserLastName { get; set; }
        public string UserEmail { get; set; }
        public DateTime UserDateOfAdd { get; set; }
        public string UserAddress { get; set; }


    }
}
