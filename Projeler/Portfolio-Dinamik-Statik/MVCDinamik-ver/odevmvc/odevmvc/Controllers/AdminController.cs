using odevmvc.Models.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace odevmvc.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        Context c = new Context();
        
        [Authorize]
        //PROJE
        public ActionResult Index()
        {
            var projects = c.Projects.OrderByDescending(x=> x.Date).ToList();
            return View(projects);
        }
        public ActionResult DeleteProject(int id)
        {
            var delete = c.Projects.Find(id);
            c.Projects.Remove(delete);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult AddProject()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddProject(project p)
        {
            c.Projects.Add(p);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult getProject(int id)
        {
            var prj = c.Projects.Find(id);
            return View("getProject", prj);
        }
        public ActionResult EditProject(project p)
        {
            var prj = c.Projects.Find(p.ID);
            prj.Title = p.Title;
            prj.Description = p.Description;
            prj.Image = p.Image;
            prj.Date = p.Date;
            prj.Author = p.Author;
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        // ADMİN HESAPLARI

        public ActionResult AdminAccount()
        {
            var admin = c.Admins.ToList();
            return View(admin);
        }
        public ActionResult DeleteAccount(int id)
        {
            var deleteAccount = c.Admins.Find(id);
            c.Admins.Remove(deleteAccount);
            c.SaveChanges();
            return RedirectToAction("AdminAccount");
        }
        [HttpGet]
        public ActionResult addAccount()
        {
            return View();
        }
        [HttpPost]
        public ActionResult addAccount(admin ad)
        {
            c.Admins.Add(ad);
            c.SaveChanges();
            return RedirectToAction("AdminAccount");
        }
        public ActionResult getAccount(int id)
        {
            var admin = c.Admins.Find(id);
            return View("getAccount", admin);
        }
        public ActionResult editAccount(admin ad)
        {
            var adm = c.Admins.Find(ad.ID);
            adm.User = ad.User;
            adm.Password = ad.Password;
            c.SaveChanges();
            return RedirectToAction("AdminAccount");
        }
        public ActionResult Contacts()
        {
            var co = c.Contacts.OrderByDescending(x => x.ID).ToList();
            return View(co);
        }
        public ActionResult ContactDelete(int id)
        {
            var cont = c.Contacts.Find(id);
            c.Contacts.Remove(cont);
            c.SaveChanges();
            return RedirectToAction("Contacts");
        }

        [HttpGet]
        public ActionResult SendMail(int id)
        {
            var mails = c.Contacts.Where(x => x.ID == id).ToList();
            return View(mails);
        }
        //Burayı, inputlardan girilen değerleri karşıda ki kişinin mailine atma tarzı bişeyler planladım
        //ancak hata aldığımdan iptal oldu :(
        /*public ActionResult SendMail(string useremail, string subject, string body)
        {
            MailMessage Msg = new MailMessage();
            Msg.From = new MailAddress(//, "Tankut Özbeyendir");
            Msg.Subject = subject;
            Msg.To.Add(useremail);
            Msg.Body = body;
            Msg.IsBodyHtml = true;
            Msg.Priority = MailPriority.High;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential(//, //);
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            return RedirectToAction("SendMail");
        }
       */
    }
}