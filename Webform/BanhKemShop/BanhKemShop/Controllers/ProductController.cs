using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanhKemShop.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ListProduct()
        {
            return View();
        }

        public ActionResult ProductHot()
        {
            return View();
        }

        public ActionResult ProductBanChay()
        {
            return View();
        }
        public ActionResult Category(int id)
        {
            ViewBag.IDTL = id;
            return View();
        }

        public ActionResult ProductDetail(int id, int idloai)
        {
            ViewBag.IDBanh = id;
            ViewBag.IDLoai = idloai;
            return View();
        }

        [HttpPost]
        public ActionResult getGiaTheoSize(string idsize, string idbanh )
        {
            return Json(webservice.Intance.getGiaTheoSize(idbanh,idsize),JsonRequestBehavior.AllowGet);
        }
    }
}