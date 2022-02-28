using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HaberSitesiMVC.Models.Classes;
namespace HaberSitesiMVC.Controllers
{
    public class RegisterController : Controller
    {
        // GET: Register
        Context c = new Context();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult UserRegister()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UserRegister(User u)
        {
            c.Users.Add(u);
            c.SaveChanges();
            ViewBag.Mesaj = "Başarı ile kayıt olundu!";
            return View(u);
        }
    }
}