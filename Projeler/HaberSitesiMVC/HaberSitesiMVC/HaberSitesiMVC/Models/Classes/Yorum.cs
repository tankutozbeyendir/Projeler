using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace HaberSitesiMVC.Models.Classes
{
    public class Yorum
    {
        [Key]
        public int ID { get; set; }
        public string kullanici { get; set; }
        public string mail { get; set; }
        public string yorumlar { get; set; }

        // çalışmazsa sil + update-database
        public bool IsApproved { get; set; }
        public int haberid { get; set; }
        public virtual Haber haber { get; set; }
    }
}