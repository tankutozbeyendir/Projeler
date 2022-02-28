using odevmvc.Models.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace odevmvc.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        Context c = new Context();

        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(admin ad)
        {
            var bilgiler = c.Admins.FirstOrDefault(x => x.User == ad.User && x.Password == ad.Password);
            if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.User, false);
                Session["kullanici"] = bilgiler.User.ToString();
                return RedirectToAction("Index", "Admin");
            }
            else
            {
                ViewBag.Hata = "Yanlış Kullanıcı adı veya şifre!";
                return View();
            }
        }
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }
    }
}