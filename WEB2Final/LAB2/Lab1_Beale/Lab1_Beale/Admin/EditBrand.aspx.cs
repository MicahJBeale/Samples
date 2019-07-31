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
    public partial class EditBrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QueryOutput.Text = (Request.QueryString["Brand"]);
        }
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (UserInput.Text != null)
            {
                int id = Convert.ToInt32(Request.QueryString["Brandid"]);
                string text = UserInput.Text;
                string statement = ("UPDATE Brands SET BrandName = '" + text + "' WHERE BrandID = " + id+";");
                string sqlString = WebConfigurationManager.ConnectionStrings["MicahBealeDataBaseConnectionString_Master"].ConnectionString;
                SqlConnection connection = new SqlConnection(sqlString);
                SqlCommand command = new SqlCommand(statement, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                Output.Text = ("This brand has been modified in the database. " + UserInput.Text);
            }
            else
                Output.Text = ("Error, the brand has not been added as the text box is empty.");
        }

    }
}