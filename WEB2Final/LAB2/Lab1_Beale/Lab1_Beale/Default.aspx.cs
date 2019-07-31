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
    public partial class Default : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectGrid = "SELECT Items.ItemName AS Item, Items.ItemQuantity AS Stock, Items.ItemPrice AS Price, Brands.BrandName AS Brand, Categories.CategoryName AS Category FROM Brands INNER JOIN Items ON Brands.BrandID = Items.BrandID INNER JOIN Categories ON Items.CategoryID = Categories.CategoryID";
            string selectDrop = "SELECT CategoryName FROM Categories";
            DataSet drop = new DataSet();
            DataSet grid = new DataSet();
            string sqlString = WebConfigurationManager.ConnectionStrings["MicahBealeDataBaseConnectionString_Master"].ConnectionString;
            SqlConnection connection = new SqlConnection(sqlString);
            connection.Open();
            SqlCommand command = new SqlCommand(selectDrop, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(drop);
            DropDownList1.DataSource = drop;
            DropDownList1.DataTextField = "CategoryName";
            DropDownList1.DataBind();
            DropDownList1.Visible = true;
            SqlConnection secondConnection = new SqlConnection(sqlString);
            SqlCommand secondCommand = new SqlCommand(selectGrid, connection);
            SqlDataAdapter secondAdapter = new SqlDataAdapter(secondCommand);
            secondAdapter.Fill(grid);
            GridView1.DataSource = grid;
            GridView1.DataBind();
            GridView1.Visible = true;
            connection.Close();
        }

        protected void RatingButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRatings.aspx");
        }

        protected void CommentButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewComments.aspx?id=");
        }

    }

}