using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace odevmvc.Models.Classes
{
    public class project
    {
        [Key]
        public int ID { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public DateTime Date { get; set; }
    }
}