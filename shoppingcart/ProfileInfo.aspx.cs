using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using shop;

public partial class ProfileInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Profile.Customer != null)
            {
                Customer c = Profile.Customer;
                TextBox1.Text = c.customer_name;
                TextBox2.Text = c.address;
                TextBox3.Text = c.city;
                TextBox4.Text = c.state;
                TextBox5.Text = c.pincode;
                TextBox6.Text = c.contactno;
                TextBox7.Text = c.email_id;
            }
            else
            {
                string l;
                l = Request.QueryString["login"];
                TextBox1.Text=l;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Profile.IsAnonymous == false)
        {
                Customer c = new Customer();
                c.customer_name = this.TextBox1.Text;
                c.address = this.TextBox2.Text;
                c.city = this.TextBox3.Text;
                c.state = this.TextBox4.Text;
                c.pincode = this.TextBox5.Text;
                c.contactno = this.TextBox6.Text;
                c.email_id = this.TextBox7.Text;
                Profile.Customer = c;
            }
            Response.Redirect("ShoppingCart.aspx");
        }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Profile.Cart.Clear();
        Profile.Cart.Items.Clear();
        FormsAuthentication.SignOut();
        Response.Redirect("index.aspx");
    }
 }

