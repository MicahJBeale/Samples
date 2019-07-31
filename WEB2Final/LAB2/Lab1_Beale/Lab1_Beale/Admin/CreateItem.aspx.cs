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
    public partial class CreateItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectDrop = "SELECT CategoryName FROM Categories";
            DataSet drop = new DataSet();
            string sqlString = WebConfigurationManager.ConnectionStrings["MicahBealeDataBaseConnectionString_Master"].ConnectionString;
            SqlConnection connection = new SqlConnection(sqlString);
            connection.Open();
            SqlCommand command = new SqlCommand(selectDrop, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(drop);
            DropDown.DataSource = drop;
            DropDown.DataTextField = "CategoryName";
            DropDown.DataBind();
            DropDown.Visible = true;
            string selectBrand = "SELECT BrandName FROM Brands";
            DataSet brand = new DataSet();
            SqlCommand secondCommand = new SqlCommand(selectBrand, connection);
            SqlDataAdapter secondAdapter = new SqlDataAdapter(secondCommand);
            secondAdapter.Fill(brand);
            BrandDropDown.DataSource = brand;
            BrandDropDown.DataTextField = "BrandName";
            BrandDropDown.DataBind();
            BrandDropDown.Visible = true;
            connection.Close();
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin/Default.aspx");
        }
        protected void EditBrand_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditBrand.aspx?Brand="+BrandDropDown.SelectedValue+"&Brandid="+BrandDropDown.SelectedIndex);
        }

        protected void EditCategory_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditCategory.aspx?Category="+DropDown.SelectedValue+"&Categoryid="+DropDown.SelectedIndex);
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            int brand = Convert.ToInt32(BrandDropDown.SelectedIndex);
            int category = Convert.ToInt32(DropDown.SelectedIndex);
            string name = ItemName.Text;
            int price = Convert.ToInt32(ItemPrice.Text);

            if (ItemPrice.Text != null && ItemName.Text != null)
            {
                string statement = ("INSERT INTO Items (ItemName, ItemQuantity, BrandID, CategoryID, ItemPrice, RatingID, CommentID) VALUES ('" + name + "','10','" + brand + "','" + category + "','"+price+"','5','14');");
                string sqlString = WebConfigurationManager.ConnectionStrings["MicahBealeDataBaseConnectionString_Master"].ConnectionString;
                SqlConnection connection = new SqlConnection(sqlString);
                SqlCommand command = new SqlCommand(statement, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                Output.Text = ("This item has been added to the database. " + ItemName.Text);
            }
            else
                Output.Text = ("Error, the category has not been added as the text box is empty.");


        }
    }
}