using odevmvc.Models.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace odevmvc.Controllers
{
    public class ContactController : Controller
    {
        Context c = new Context();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(contact i)
        {
            c.Contacts.Add(i);
            c.SaveChanges();
            ViewBag.Message = "Mesajiniz iletildi. Geri donus saglanacaktir.";
            return View(i);
        }
    }
}