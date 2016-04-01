using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Collections.Generic;

namespace shop
{
    public class Cart
    {
        public Cart()
        {
        }
    }
    [Serializable]
    public class CartItem
    {
        private int _item_code;
        private string _item_name;
        private string _description;
        private int _quantity;
        private double _price;
        private double _total;

        public void New()
        {
        }

        public void New(int item_code, string item_name, string description, int quantity, double price)
        {
            _item_code = item_code;
            _item_name = item_name;
            _description = description;
            _quantity = quantity;
            _price = price;
           // _total = quantity * price;
            _total =  price;
        }

        public int item_code
        {
            get
            {
                return _item_code;
            }
            set
            {
                _item_code = value;
            }
        }

        public string item_name
        {
            get
            {
                return _item_name;
            }
            set
            {
                _item_name = value;
            }
        }

        public string description
        {
            get
            {
                return _description;
            }
            set
            {
                _description = value;
            }
        }

        public int quantity
        {
            get
            {
                return _quantity;
            }
            set
            {
                _quantity = value;
            }
        }

        public double price
        {
            get
            {
                return _price;
            }
            set
            {
                _price = value;
            }
        }

        public double total
        {
            get
            {
                return _price;
            }
        }

    }

    [Serializable]
    public class ShoppingCart
    {
        private DateTime _dateCreated;
        private DateTime _lastUpdate;
        private List<CartItem> itemslist;

        public ShoppingCart()
        {
            if (this.itemslist == null)
            {
                this.itemslist = new List<CartItem>();
                this._dateCreated = DateTime.Now;
            }
        }

        public List<CartItem> Items
        {
            get
            {
                return itemslist;
            }
            set
            {
                itemslist = value;
            }
        }
        public void Clear()
        {
            itemslist.Clear();
        }

        public void Insert(int item_code, string item_name, string description, int quantity, double price)
        {
            int loc = searchitem(item_code);
            if (loc == -1)
            {
                CartItem NewItem = new CartItem();
                NewItem.item_code = item_code;
                NewItem.item_name = item_name;
                NewItem.description = description;
                NewItem.quantity = quantity;
                NewItem.price = price;
                itemslist.Add(NewItem);
            }
            else
            {
                itemslist[loc].quantity += 1;
            }
            _lastUpdate = DateTime.Now;
        }
/*
        public void Update(int RowID, int item_code, int quantity, double price)
        {
            CartItem Item = itemslist[RowID];
            Item.item_code = item_code;
            Item.quantity = quantity;
            Item.price = price;
            _lastUpdate = DateTime.Now;
        }

        public void DeleteItem(int rowID)
        {
            itemslist.RemoveAt(rowID);
            _lastUpdate = DateTime.Now;
        }
*/
        private int searchitem(int item_code)
        {
            int index = 0;
            foreach (CartItem item in itemslist)
            {
                if (item.item_code == item_code)
                {
                    return index;
                }
                index += 1;
            }
            return -1;
        }

        public double total
        {
            get
            {
                double t = 0;

                if (itemslist == null)
                {
                    return 0;
                }

                foreach (CartItem Item in itemslist)
                {
                    t += Item.total;
                }

                return t;
            }
        }
 
    }
    [Serializable]
    public class Customer
    {
        public string customer_name;
        public string address;
        public string city;
        public string state;
        public string pincode;
        public string contactno;
        public string email_id;
    }
}




