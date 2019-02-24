using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMS_Project
{
    public class Item
    {
        public int Selection_Id { get; set; }
        public string Item_name { get; set; }
        public decimal Item_price { get; set; }
        public string Item_image { get; set; }
        

        public Item(int id, string name,decimal price, string image)
        {
            Selection_Id = id;
            Item_name = name;
            Item_price = price;
            Item_image = image;
            
        }
    }
}