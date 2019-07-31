using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_Beale.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CategoryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateCategory.aspx");
        }

        protected void BrandButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateBrand.aspx");
        }

        protected void ItemButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateItem.aspx");        }
    }
}