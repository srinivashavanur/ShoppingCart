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

public partial class Thanks : System.Web.UI.Page
{
    int ono;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ono = Convert.ToInt32(Session["orderno"]);
            Label1.Text = ono.ToString();
            FormsAuthentication.SignOut();
            Session.Abandon();
        }
    }
    
}
