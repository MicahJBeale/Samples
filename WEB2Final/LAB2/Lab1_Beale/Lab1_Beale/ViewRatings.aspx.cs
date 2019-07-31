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

namespace Lab1_Beale
{
    public partial class ViewRatings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet grid = new DataSet();
            string selectGrid = "SELECT Items.ItemName AS Item, Ratings.RatingStars AS Score, Categories.CategoryName AS Category FROM Items INNER JOIN Categories ON Items.CategoryID = Categories.CategoryID INNER JOIN Ratings ON Items.RatingID = Ratings.RatingID";
            string sqlString = WebConfigurationManager.ConnectionStrings["MicahBealeDataBaseConnectionString_Master"].ConnectionString;
            SqlConnection secondConnection = new SqlConnection(sqlString);
            SqlCommand secondCommand = new SqlCommand(selectGrid, secondConnection);
            SqlDataAdapter secondAdapter = new SqlDataAdapter(secondCommand);
            secondConnection.Open();
            secondAdapter.Fill(grid);
            GridView1.DataSource = grid;
            GridView1.DataBind();
            GridView1.Visible = true;
            secondConnection.Close();
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}