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
public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int code;
        code = Convert.ToInt32(Request.QueryString["item_code"]);
        string sql = "SELECT * FROM products WHERE item_code=" + code;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shoppingcartConnectionString"].ConnectionString);
        SqlCommand comm = new SqlCommand(sql, conn);
        conn.Open();
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("image", typeof(string)));
        SqlDataReader reader = comm.ExecuteReader();
        while (reader.Read())
        {
            DataRow dr = dt.NewRow();

            dr["image"] = ("dispimage.aspx?itemcode=" + code);
            dt.Rows.Add(dr);
        }
        GridView2.DataSource = dt;
        GridView2.DataBind();
        Page.DataBind();
        conn.Close();
    }
   
    
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        GridViewRow row = GridView1.Rows[0];
        int item_code = int.Parse(row.Cells[0].Text);
        string item_name = row.Cells[1].Text;
        string description = row.Cells[2].Text;
        double price = double.Parse(row.Cells[3].Text);
        if (Profile.Cart == null)
        {
            Profile.Cart = new shop.ShoppingCart();
        }
        Profile.Cart.Insert(item_code, item_name, description, 1, price);
        Server.Transfer("ShoppingCart.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ShoppingCart.aspx");
    }
}
