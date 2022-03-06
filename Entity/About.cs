using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Bosphorus.Entity
{
    public class About
    {
        [Key]
        public int AboutID { get; set; }
        public string AboutTitle { get; set; }
        public string AboutImg { get; set; }
        public string AboutDesc { get; set; }
    }
}
