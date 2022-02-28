using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HaberSitesiMVC.Models.Classes
{
    public class Haber
    {
        [Key]
        public int ID { get; set; }
        public string baslik { get; set; }
        public string aciklama { get; set; }
        public string aciklama2 { get; set; }
        public string haberimage { get; set; }
        public string haberimage2 { get; set; }
        public string editor { get; set; }
        public DateTime tarih { get; set; }
        public ICollection<Yorum> yorums { get; set; }
    }
}