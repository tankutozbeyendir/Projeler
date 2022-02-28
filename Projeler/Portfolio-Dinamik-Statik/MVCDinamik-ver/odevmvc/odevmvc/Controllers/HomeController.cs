using odevmvc.Models.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace odevmvc.Controllers
{
    public class HomeController : Controller
    {
        Context c = new Context();
        public ActionResult Index()
        {
            var projeler = c.Projects.OrderByDescending(x => x.Date).Take(3).ToList();
            return View(projeler);
        }
        public ActionResult ProjectDetail(int id)
        {
            var proje = c.Projects.Where(x => x.ID == id).ToList();
            return View(proje);
        }
        
    }
}