using Bosphorus.Contexts;
using Bosphorus.Entity;
using Bosphorus.Interfaces;
using Bosphorus.Models;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Bosphorus.Controllers
{
    public class HomeController : Controller
    {
        private readonly IServiceRepository _serviceRepository;

        private readonly IContactRepository _contactRepository;

        Context co = new Context();
        public HomeController(IServiceRepository serviceRepository, IContactRepository contactRepository)
        {
            _contactRepository = contactRepository;
            _serviceRepository = serviceRepository;
        }
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Index(Contact c)
        {
            co.contacts.Add(c);
            co.SaveChanges();
            ViewBag.Title = "Bosphorus Elite";
            ViewBag.Message = "Your message has been sent, thank you for reaching us.!";
            return View(c);
        }
    }

}