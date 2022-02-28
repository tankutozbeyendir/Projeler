using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HaberSitesiMVC.Models.Classes;
namespace HaberSitesiMVC.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        Context c = new Context();
        HaberYorum hy = new HaberYorum();
        public bool IsApproved;

        [Authorize]
        public ActionResult Index()
        {
            var degerler = c.habers.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult YeniHaber()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniHaber(Haber h)
        {
            c.habers.Add(h);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult HaberSil(int id)
        {
            var b = c.habers.Find(id);
            c.habers.Remove(b);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult HaberGetir(int id)
        {
            var hbr = c.habers.Find(id);
            return View("HaberGetir", hbr);
        }
        public ActionResult HaberGuncelle(Haber h)
        {
            var hbr = c.habers.Find(h.ID);
            hbr.baslik = h.baslik;
            hbr.aciklama = h.aciklama;
            hbr.aciklama2 = h.aciklama2;
            hbr.haberimage = h.haberimage;
            hbr.haberimage2 = h.haberimage2;
            hbr.tarih = h.tarih;
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult ComingNews()
        {
            var degerler = c.ekleneceks.ToList();
            return View(degerler);
        }
        public ActionResult ComingNewsGetir(int id)
        {
            var cmg = c.ekleneceks.Find(id);
            return View("ComingNewsGetir", cmg);
        }
        public ActionResult ComingNewsGuncelle(EklenecekHaberler ekl)
        {
            var ekls = c.ekleneceks.Find(ekl.ID);
            ekls.baslik = ekl.baslik;
            ekls.editor = ekl.editor;
            c.SaveChanges();
            return RedirectToAction("ComingNews");
        }

        public ActionResult Iletisim()
        {
            var degerler = c.iletisims.OrderByDescending(x=> x.ID).ToList();
            return View(degerler);
        }
        public ActionResult IletisimSil(int id)
        {
            var it = c.iletisims.Find(id);
            c.iletisims.Remove(it);
            c.SaveChanges();
            return RedirectToAction("Iletisim");
        }
        public ActionResult IletisimGetir(int id)
        {
            var ilt = c.iletisims.Find(id);
            return View("IletisimGetir", ilt);
        }
        public ActionResult IletisimGuncelle(İletisim ilt)
        {
            var ilet = c.iletisims.Find(ilt.ID);
            ilet.ID = ilt.ID;
            ilet.adsoyad = ilt.adsoyad;
            ilet.mail = ilt.mail;
            ilet.konu = ilt.konu;
            ilet.mesaj = ilt.mesaj;
            return View();
        }
        public ActionResult YorumListesi()
        {
            var yorumlar = c.yorums.ToList();
            return View(yorumlar);
        }
        public ActionResult YorumSil(int id)
        {
            var b = c.yorums.Find(id);
            c.yorums.Remove(b);
            c.SaveChanges();
            return RedirectToAction("YorumListesi");
        }
        public ActionResult YorumOnayla(Yorum Y)
        {
            var y = c.yorums.Find(Y.ID);
            y.IsApproved = true;
            c.SaveChanges();
            return RedirectToAction("YorumListesi");
        }
        public ActionResult YorumGetir(int id)
        {
            var yr = c.yorums.Find(id);
            return View("YorumGetir", yr);
        }
        public ActionResult YorumGuncelle(Yorum y)
        {
            var yrm = c.yorums.Find(y.ID);
            yrm.kullanici = y.kullanici;
            yrm.mail = y.mail;
            yrm.yorumlar = y.yorumlar;
            c.SaveChanges();
            return RedirectToAction("YorumListesi");
        }
       public ActionResult Kullanici()
        {
            var kullanici = c.Users.OrderByDescending(x => x.ID).ToList();
            return View(kullanici);
        }
        public ActionResult KullaniciSil(int id)
        {
            var kullanicis = c.Users.Find(id);
            c.Users.Remove(kullanicis);
            c.SaveChanges();
            return RedirectToAction("Kullanici");
        }
    }
}