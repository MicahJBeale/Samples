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
    public partial class EditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QueryOutput.Text = (Request.QueryString["Category"]);
        }
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (QueryOutput.Text != "*")
            {
                if (UserInput.Text != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["Categoryid"]);
                    string text = UserInput.Text;
                    string statement = ("UPDATE CATEGORIES SET CategoryName = '" + text + "' WHERE CategoryId = " + id + ";");
                    string sqlString = WebConfigurationManager.ConnectionStrings["MicahBealeDataBaseConnectionString_Master"].ConnectionString;
                    SqlConnection connection = new SqlConnection(sqlString);
                    SqlCommand command = new SqlCommand(statement, connection);
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                    Output.Text = ("This Category has been added to the database. " + UserInput.Text);
                }
                else
                {
                    Output.Text = ("Error, the category has not been added as the text box is empty.");
                    Output.Text = ("The category has been modified, the new category is: " + QueryOutput.Text);
                }
            }
            else
            Output.Text = ("Unfortunetly that category cannot be changed. \nIt is the default category which populates all the categories by default. \nPlease go back to the create item page and select a different category to edit.");
        }
    }
}