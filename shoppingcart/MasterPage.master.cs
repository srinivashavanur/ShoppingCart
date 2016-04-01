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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ShoppingCart.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["category"] = "camera";
        Response.Redirect("productlist.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "camera";
        Response.Redirect("productlist.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "mobile";
        Response.Redirect("productlist.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["category"] = "mobile";
        Response.Redirect("productlist.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "book";
        Response.Redirect("productlist.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["category"] = "book";
        Response.Redirect("productlist.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CreateAccount.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateAccount.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contactus.aspx");
    }
}
