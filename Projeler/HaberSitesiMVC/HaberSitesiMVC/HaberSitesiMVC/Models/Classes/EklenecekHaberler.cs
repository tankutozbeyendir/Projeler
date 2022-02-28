using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HaberSitesiMVC.Models.Classes
{
    public class EklenecekHaberler
    {
        [Key]
        public int ID { get; set; }
        public string baslik { get; set; }
        public string editor { get; set; }

    }
}