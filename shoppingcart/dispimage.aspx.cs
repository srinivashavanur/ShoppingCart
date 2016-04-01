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

public partial class dispimage : System.Web.UI.Page
{
    int code;
    protected void Page_Load(object sender, EventArgs e)
    {
        code = Convert.ToInt32(Request.QueryString["itemcode"]);
        string sql = "SELECT image FROM products WHERE item_code="+code;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shoppingcartConnectionString"].ConnectionString);
        SqlCommand comm = new SqlCommand(sql, conn);
        conn.Open();
        SqlDataReader reader = comm.ExecuteReader();
        while (reader.Read())
        {
            Response.BinaryWrite((byte[])reader["image"]);
        }
        conn.Close();
    }
}
