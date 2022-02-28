using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using HaberSitesiMVC.Models.Classes;
namespace HaberSitesiMVC.Controllers
{
    public class GirisYapController : Controller
    {
        // GET: GirisYap
        Context c = new Context();

        public bool asd;
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Admin ad)
        {
            var bilgiler = c.admins.FirstOrDefault(x => x.kullanici == ad.kullanici && x.sifre == ad.sifre);
            if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.kullanici, false);
                Session["kullanici"] = bilgiler.kullanici.ToString();
                asd = true;
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
            asd = false;
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }


        public ActionResult UserLogin()
        {
            return View();
        }


        [HttpPost]
        public ActionResult UserLogin(User us)
        {

            var usersbilgi = c.Users.FirstOrDefault(x => x.username == us.username && x.password == us.password && x.email == us.email);
            if (usersbilgi != null)
            {
                FormsAuthentication.SetAuthCookie(usersbilgi.username, false);
                Session["username"] = usersbilgi.username.ToString();
                Session["email"] = usersbilgi.email.ToString();
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.Hata = "Yanlış Kullanıcı adı veya şifre!";
                return View();
            }
        }
        public ActionResult UserLogOut()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

    }
}