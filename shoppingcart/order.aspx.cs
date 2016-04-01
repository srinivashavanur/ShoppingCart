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
using System.Data.SqlClient;
using shop;
public partial class order : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;
    int ono;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["shoppingcartConnectionString"].ConnectionString);
        com = new SqlCommand("select order_no from orders", con);
        con.Open();
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            while (dr.Read())
            {
                ono = Convert.ToInt32(dr[0].ToString());
            }
            ono++;
        }
        else
        {
            ono = 1;
        }
        Label2.Text = ono.ToString();
        Session["orderno"] = ono.ToString();
        con.Close();
       
        if (!IsPostBack)
        { 
            if (Profile.Cart.Items.Count != 0)
            {
                    if (User.Identity.IsAuthenticated)
                    {
                        Customer c = Profile.Customer;
                        if (Profile.Customer != null)
                        {
                            TextBox1.Text = c.customer_name;
                            TextBox2.Text = c.address;
                            TextBox3.Text = c.city;
                            TextBox4.Text = c.state;
                            TextBox5.Text = c.pincode;
                            TextBox6.Text = c.contactno;
                            TextBox7.Text = c.email_id;
                        }
                    }
                    else
                    {
                        Response.Redirect("Welcome.aspx");
                    }
                }
                else
                {
                    Profile.Cart.Clear();
                    Profile.Cart.Items.Clear();
                    Session.Abandon();
                    Response.Redirect("index.aspx");
                }
            Label13.Visible = true;
            Label13.Text=Profile.Cart.total.ToString();
            }
      }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string paymode,str;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["shoppingcartConnectionString"].ConnectionString);
        paymode = "";
        if (RadioButton1.Checked ==true)
        {
            paymode="master card";
        }
        if (RadioButton2.Checked ==true)
        {
            paymode="visa card";
        }
        if (RadioButton3.Checked ==true)
        {
            paymode = "anz card";
        }
        Customer c = new Customer();
        c.customer_name = this.TextBox1.Text;
        c.address = this.TextBox2.Text;
        c.city = this.TextBox3.Text;
        c.state = this.TextBox4.Text;
        c.pincode = this.TextBox5.Text;
        c.contactno = this.TextBox6.Text;
        c.email_id = this.TextBox7.Text;
        Profile.Customer = c;
        ono = Convert.ToInt32(Session["orderno"]);
        str = "insert into orders (order_no,customer_name, address, city, state, contactno, pincode, paymode,email_id)" + "values("+ono+",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "','" + paymode + "','" + TextBox7.Text + "')";
        com = new SqlCommand(str, con);
        con.Open();
        com.ExecuteNonQuery();
      
        SqlCommand comm = new SqlCommand("INSERT INTO order_details(order_no,item_code, item_name, quantity, price)VALUES (@order_no,@item_code, @item_name,@quantity, @price)", con);
        SqlParameter ordno, itmcode, itmnme, qty, prc;
        ordno = new SqlParameter("@order_no", SqlDbType.Int);
        comm.Parameters.Add(ordno);
        itmcode = new SqlParameter("@item_code", SqlDbType.Int);
        comm.Parameters.Add(itmcode);
        itmnme = new SqlParameter("@item_name", SqlDbType.VarChar);
        comm.Parameters.Add(itmnme);
        qty = new SqlParameter("@quantity", SqlDbType.Int);
        comm.Parameters.Add(qty);
        prc = new SqlParameter("@price", SqlDbType.Float);
        comm.Parameters.Add(prc);
        
        foreach (CartItem item in Profile.Cart.Items)
        {
            ordno.Value = ono;
            itmcode.Value = item.item_code;
            itmnme.Value = item.item_name;
            qty.Value = item.quantity;
            prc.Value = item.price;
            comm.ExecuteNonQuery();
        }
        
        con.Close();
        Profile.Cart.Clear();
        Profile.Cart.Items.Clear();
        Response.Redirect("Thanks.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Profile.Cart.Clear();
        Profile.Cart.Items.Clear();
        Profile.Customer = null;
        FormsAuthentication.SignOut();
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
}
