using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HaberSitesiMVC.Models.Classes;
namespace HaberSitesiMVC.Controllers
{
    public class ContactController : Controller
    {
        Context c = new Context();
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(İletisim i)
        {
            c.iletisims.Add(i);
            c.SaveChanges();
            ViewBag.Message = "Mesajınız iletildi, bize ulaştığınız için teşekkürler!";
            return View(i);
        }
    }


}