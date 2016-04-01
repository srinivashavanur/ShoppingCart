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

public partial class ShoppingCart : System.Web.UI.Page
{
    //string price;
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
            if (Profile.Cart.Items.Count != 0)
            {
                Label2.Text = "Items in the cart are";
                if (Profile.Customer != null)
                {
                    string nme = Profile.Customer.customer_name + " Shopping cart is";
                    Label2.Text = nme;
                }
                
                BindGrid();
                foreach (GridViewRow r in GridView1.Rows)
                {
                    Session["price"+r.RowIndex] = GridView1.Rows[r.RowIndex].Cells[5].Text;
                   // Session["newprice"+r] = Session["price" + r];
                }
            }
            else
            {
                Label2.Text = "Nothing is selected in the cart";
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int qt,prce,recentprice;
        string quantity, price;
        quantity = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        //price = GridView1.Rows[e.RowIndex].Cells[5].Text;
        qt = Convert.ToInt32(quantity);
        prce = Convert.ToInt32(Session["price"+e.RowIndex]);
        //recentprice = prce;
        
        if (qt == 0)
        {
            Profile.Cart.Items.RemoveAt(e.RowIndex);
        }
        else
        {
            Profile.Cart.Items[e.RowIndex].quantity = qt;
            Profile.Cart.Items[e.RowIndex].price = prce * qt; 
        }
        GridView1.EditIndex = -1;
        BindGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Profile.Cart.Items.RemoveAt(e.RowIndex);
        BindGrid();
    }
    private void BindGrid()
    {
        GridView1.DataSource = Profile.Cart.Items;
        DataBind();
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("order.aspx");
    }
}
