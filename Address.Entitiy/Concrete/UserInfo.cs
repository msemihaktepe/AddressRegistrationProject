
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Address.Entities.Concrate
{
    public class UserInfo
    {
        /*
         ID, id, UserInfoID, UserInfoId
         */
        [Key]
        public string UserIdNo { get; set; }
        public string UserFirstName { get; set; }
        public string UserLastName { get; set; }
        public string UserEmail { get; set; }
        public DateTime UserDateOfAdd { get; set; }
        public string UserAdress1 { get; set; }
        public string UserAdress2 { get; set; }
        public string UserCity { get; set; }
        public string UserDistrict { get; set; }


    }
}
