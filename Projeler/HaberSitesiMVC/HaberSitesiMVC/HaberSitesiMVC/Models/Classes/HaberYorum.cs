using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PagedList;
using PagedList.Mvc;
namespace HaberSitesiMVC.Models.Classes
{
    public class HaberYorum
    {
        public IEnumerable<Haber> Deger1 { get; set; }
        public IEnumerable<Yorum> Deger2 { get; set; }
        public bool IsApproved { get; set; }
        public IEnumerable<User> Deger6 { get; set; }
        public IEnumerable<Haber> Deger3 { get; set; }
        public IEnumerable<EklenecekHaberler> Deger4 { get; set; }
        public PagedList.IPagedList<Haber> PagedLogs { get; set; }

    }
}