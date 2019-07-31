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
    public partial class CreateCategory : System.Web.UI.Page
    {
        int counter = 6;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["counter"] == null)
                Session["counter"] = 6;
            counter = (Convert.ToInt32(HttpContext.Current.Session["counter"]));
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (UserInput.Text != null)
         {
                string text = UserInput.Text;
                string statement = ("INSERT INTO CATEGORIES (CategoryID, CategoryName) VALUES ('"+counter+"', '"+text+"');");
                string sqlString = WebConfigurationManager.ConnectionStrings["MicahBealeDataBaseConnectionString_Master"].ConnectionString;
            SqlConnection connection = new SqlConnection(sqlString);
            SqlCommand command = new SqlCommand(statement, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            connection.Open();
                command.ExecuteNonQuery();
            connection.Close();
            Output.Text = ("This Category has been added to the database. " + UserInput.Text);
                Session["counter"] = (counter + 1);
            }
            else
            Output.Text = ("Error, the category has not been added as the text box is empty.");

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}