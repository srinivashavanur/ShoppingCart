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

public partial class stockentry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        try
        {
            HttpPostedFile imgfile = FileUpload1.PostedFile;
            int n = imgfile.ContentLength;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shoppingcartConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand comm = new SqlCommand("INSERT INTO products(item_code, item_name, description, category, quantity, price, image, imagename)VALUES (@itemcode, @itemname, @description, @category, @quantity, @price, @image, @imagename)", conn);
            byte[] imgcontent = new byte[n];
            imgfile.InputStream.Read(imgcontent, 0, n);
            comm.Parameters.Add("@image", SqlDbType.Image).Value=imgcontent;
            comm.Parameters.Add("@imagename", SqlDbType.VarChar).Value=FileUpload1.PostedFile.FileName;
            comm.Parameters.Add("@itemcode", SqlDbType.VarChar).Value = TextBox1.Text;
            comm.Parameters.Add("@itemname", SqlDbType.VarChar).Value = TextBox2.Text;
            comm.Parameters.Add("@description", SqlDbType.VarChar).Value = TextBox3.Text;
            comm.Parameters.Add("@category", SqlDbType.VarChar).Value = DropDownList1.Text;
            comm.Parameters.Add("@quantity", SqlDbType.Int).Value = Convert.ToInt32(TextBox5.Text);
            comm.Parameters.Add("@price", SqlDbType.Float).Value = Convert.ToDouble(TextBox6.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            lblError.Text = "Record Saved";
            lblError.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
       }
       catch (SqlException)
       {
            lblError.Text = "Error accessing SQL Server"; lblError.Visible = true;
       } 
    }
}
