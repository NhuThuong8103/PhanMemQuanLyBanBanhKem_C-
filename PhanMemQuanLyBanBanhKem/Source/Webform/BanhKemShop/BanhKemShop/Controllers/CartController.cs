using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanhKemShop.Models;

namespace BanhKemShop.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        public ActionResult Index()
        {
            ViewBag.ListCart = (List<CartItem>)Session["Cart"];
            
            return View();
        }

        public ActionResult addOneItem(int productID)
        {
            var cart = Session["Cart"];

            if (cart!=null)
            {
                var list = (List<Models.CartItem>)cart;

                if (list.Exists(p=>p.productId==productID))
                {
                    foreach (var item in list)
                    {
                        if (item.productId == productID)
                        {
                            item.quantity += 1;
                        }
                    }
                }
                else
                {
                    var item = new Models.CartItem();
                    item.productId = productID;
                    item.quantity = 1;
                    list.Add(item);
                }
                Session["Cart"] = list;
            }  
            else
            {
                var item = new Models.CartItem();
                item.productId = productID;
                item.quantity = 1;
                var listCart = new List<Models.CartItem>();
                listCart.Add(item);
                Session["Cart"] = listCart;
            }

            return Redirect(Request.UrlReferrer.PathAndQuery);
        }
    }
}