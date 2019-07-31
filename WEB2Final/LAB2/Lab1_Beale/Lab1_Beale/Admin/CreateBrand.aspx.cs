using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Web.ModelBinding;
using System.Drawing;
using System.Web.Configuration;

namespace Lab1_Beale.Admin
{
    public partial class CreateBrand : System.Web.UI.Page
    {
        int counter2 = 7;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["counter2"] == null)
                Session["counter2"] = 7;
            counter2 = (Convert.ToInt32(HttpContext.Current.Session["counter2"]));
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (BrandInput.Text != null)
            {
                string text = BrandInput.Text;
                string statement = ("INSERT INTO BRANDS (BrandID, BrandName) VALUES ('" + counter2 + "', '" + text + "');");
                string sqlString = WebConfigurationManager.ConnectionStrings["MicahBealeDataBaseConnectionString_Master"].ConnectionString;
                SqlConnection connection = new SqlConnection(sqlString);
                SqlCommand command = new SqlCommand(statement, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                Output.Text = ("This Category has been added to the database. " + BrandInput.Text);
                Session["counter2"] = (counter2 + 1);

            }
            else
            {
                Output.Text = ("Error, the category has not been added as the text box is empty.");
            }
        }
    }
}