using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["ID"];
            if (id != null)
            {
                dlProduct.DataSource = DataAccess.selectQuery("SELECT * FROM Products WHERE ID= " + id);
                dlProduct.DataBind();
            }
        }
    }
}