using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanhKemShop.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            ViewBag.DSBanhNoiBat = webservice.Intance.getDanhSachBanhKemNoiBat();
            ViewBag.DSBanhBanChay = webservice.Intance.getDanhSachBanhKemBanChay();
            ViewBag.DSBanhHot = webservice.Intance.getDanhSachBanhKemHot();
            return View();
        }

        [ChildActionOnly]
        public ActionResult MainMenu()
        {
            return PartialView();
        }
    }
}