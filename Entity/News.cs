using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bosphorus.Entity
{
    public class News
    {
        public int NewsID { get; set; }
        public string NewsTitle { get; set; }
        public string NewsContent { get; set; }
        public DateTime NewsDate { get; set; }
        public ICollection<Team> teams { get; set; }
    }
}
