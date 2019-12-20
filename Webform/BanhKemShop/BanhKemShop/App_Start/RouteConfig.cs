using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace BanhKemShop
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Dang Nhap",
                url: "Login",
                defaults: new { controller = "Login", action = "login", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
            routes.MapRoute(
                name: "Dang Xuat",
                url: "Logout",
                defaults: new { controller = "Login", action = "logout", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
            routes.MapRoute(
                name: "Dang Ky",
                url: "Register",
                defaults: new { controller = "Login", action = "register", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
            routes.MapRoute(
                name: "Danh Sach San Pham",
                url: "san-pham",
                defaults: new { controller = "Product", action = "ListProduct", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
            routes.MapRoute(
                name: "Danh Sach San Pham Ban Chy",
                url: "san-pham-ban-chay",
                defaults: new { controller = "Product", action = "ProductBanChay", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
            routes.MapRoute(
                name: "Danh Sach San Pham Hot",
                url: "san-pham-hot",
                defaults: new { controller = "Product", action = "ProductHot", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
            routes.MapRoute(
                name: "Danh Sach San Pham Theo The Loai",
                url: "the-loai-san-pham-{id}",
                defaults: new { controller = "Product", action = "Category", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
            routes.MapRoute(
                name: "Chi Tiet San Pham",
                url: "chi-tiet-san-pham-{id}-{idloai}",
                defaults: new { controller = "Product", action = "ProductDetail", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
            routes.MapRoute(
               name: "Gio Hang",
               url: "gio-hang",
               defaults: new { controller = "Cart", action = "Index", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
           );
            routes.MapRoute(
              name: "Them Gio Hang",
              url: "them-gio-hang",
              defaults: new { controller = "Cart", action = "addOneItem", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
          );
            routes.MapRoute(
             name: "Them Gio Hang Voi So Luong Nhieu",
             url: "them-gio-hang-nhieu-item",
             defaults: new { controller = "Cart", action = "addManyItem", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
         );


            routes.MapRoute(
                name: "Gioi Thieu",
                url: "gioi-thieu",
                defaults: new { controller = "About", action = "Index", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );

            routes.MapRoute(
                name: "Lien He",
                url: "lien-he",
                defaults: new { controller = "Contact", action = "Index", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }, namespaces: new[] { "BanhKemShop.Controllers" }
            );
        }
    }
}
