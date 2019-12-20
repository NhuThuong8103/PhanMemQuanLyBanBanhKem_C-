using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanhKemShop.Models
{
    public class CartItem
    {
        public int productId { get; set; }

        public int quantity { get; set; }

        public CartItem()
        {

        }
    }
}