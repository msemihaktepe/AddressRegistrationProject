using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Address.Entitiy.Concrete
{
    public class ilceler
    {
        [Key]
        public int ilce_no { get; set; }
        public string isim { get; set; }
        public int il_no { get; set; }
    }
}
