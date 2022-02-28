using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HaberSitesiMVC.Models.Classes;
using PagedList;
using PagedList.Mvc;


namespace HaberSitesiMVC.Controllers
{
    public class HaberController : Controller
    {
        // GET: Haber
        HaberYorum by = new HaberYorum();

        Context c = new Context();


        public ActionResult Index(int? sayfa)
        {
            by.PagedLogs = c.habers.ToList().ToPagedList(sayfa ?? 1, 4);

            return View(by);

        }
        
        public ActionResult IndexSearch(string search)
        {
            if (string.IsNullOrEmpty(search) == false)
            {
                by.Deger1 = c.habers.Where(x => x.baslik.Contains(search) || x.aciklama.Contains(search) || x.aciklama2.Contains(search));
            
            }
            return View(by);
        }

        public PartialViewResult Search()
        {
            return PartialView();
        }
        
        public ActionResult HaberDetay(int id)
        {
            by.Deger1 = c.habers.Where(x => x.ID == id).ToList();
            by.Deger2 = c.yorums.Where(x => x.haberid == id && x.IsApproved == true).ToList();
            by.Deger3 = c.habers.OrderByDescending(x => x.ID).Take(12).ToList();
            return View(by);

        }
        [HttpGet]
        public PartialViewResult YorumYap(int id)
        {
            ViewBag.deger = id;
            return PartialView();
        }
        [HttpPost]
        public PartialViewResult YorumYap(Yorum y)
        {
            c.yorums.Add(y);
            c.SaveChanges();
            ViewBag.Mesajj = "Yorumunuz gönderildi ancak, yönetici onayı bekleniyor.";
            return PartialView();
        }
    }
}