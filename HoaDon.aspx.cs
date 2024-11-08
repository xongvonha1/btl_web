﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLweb
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int soluot = Convert.ToInt32(Application["sogiohang"]);
            List<Product> cartList = new List<Product>();
            List<Product> productList = (List<Product>)Application["ProductList"];
            string[] productsID = Request.Cookies["cart"].Value.Split(',');
            foreach (string productID in productsID)
            {
                foreach (Product product in productList)
                {
                    if (product.Id == productID)
                    {
                        soluot++;
                        cartList.Add(product);

                    }
                }
                //sogiohang.InnerHtml = "<p> Số sản phẩm trong giỏ hàng là: " + soluot +"</p>";
            }
            ListViewCart.DataSource = cartList;
            ListViewCart.DataBind();

            int productsPrice = 0;
            foreach (Product product in cartList) productsPrice += Int32.Parse(product.Price);
           

            //Display delivery price phi ship
            /**const int DELIVERY = 25000;
            delivery_price.InnerHtml = $"{DELIVERY} <span class='cart__product-price-unit'>đ</span>";**/

            //Display order total price
            int orderTotal = productsPrice;
            order_total_price.InnerHtml = $"{orderTotal} <span class='cart__product-price-unit'>đ</span>";

        }
    }
}