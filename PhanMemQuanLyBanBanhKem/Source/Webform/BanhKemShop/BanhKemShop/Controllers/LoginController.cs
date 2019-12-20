using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanhKemShop.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult login()
        {
            return View();
        }

        public ActionResult register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult checklogin(string email, string password)
        {
            bool ck = webservice.Intance.checkUserLogin(email,password);

            if (ck)
            {
                Session["user"] = email;
                return RedirectToAction("Index", "Home");
            }
            ViewBag.Message = "login success";
            return View("login");
        }

        [HttpPost]
        public ActionResult registerAccount(string name, string address, string phone, string email, string password)
        {
            webservice.Intance.registerAccountUser(name,address,phone,email,password);
            ViewBag.Message = "login success";
            return View("register");
        }

        public ActionResult logout()
        {
            Session.Remove("user");

            return RedirectToAction("Index","Home");
        }
    }
}