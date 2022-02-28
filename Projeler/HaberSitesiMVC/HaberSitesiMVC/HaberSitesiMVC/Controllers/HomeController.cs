using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using HaberSitesiMVC.Models.Classes;

namespace HaberSitesiMVC.Controllers
{
    public class HomeController : Controller
    {
        Context c = new Context();

        HaberYorum ad = new HaberYorum();
        public ActionResult Index()
        {
            ad.Deger1 = c.habers.OrderBy(x => Guid.NewGuid()).Take(4);
            ad.Deger4 = c.ekleneceks.OrderByDescending(x => x.ID).Take(4).ToList();
            return View(ad);
        }
       
        public ActionResult About()
        {
            return View();
        }

        public PartialViewResult SolAlt()
        {
            ad.Deger1 = c.habers.OrderBy(x => Guid.NewGuid()).Take(1);
            return PartialView(ad);
        }
        public PartialViewResult SolAlt2()
        {
            ad.Deger1 = c.habers.OrderByDescending(x => x.ID).Take(1).ToList();
            return PartialView(ad);
        }
        public PartialViewResult SolAlt3()
        {
            ad.Deger1 = c.habers.OrderBy(x => Guid.NewGuid()).Take(1);
            return PartialView(ad);
        }

        public PartialViewResult SonDakika()
        {
            ad.Deger1 = c.habers.OrderByDescending(x => x.ID).Take(7).ToList();
            return PartialView(ad);
        }
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

    }
}