using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4_LTWeb
{
    public partial class ListProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnDetails_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView GridView1 = Page.FindControl("GridView1") as GridView;
            GridViewRow row = GridView1.SelectedRow;

            Session["ProductID"] = row.Cells[0].Text;
            

            Response.Redirect("Details.aspx");
            //Response.Write("<script>alert('" + row.Cells[0].Text + "');</script>");
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommand = "insert into Products values(@productID," +
                "@productName, @amount, @price, @producerID)";
            SqlDataSource1.InsertParameters.Add("productID", txtID.Text);
            SqlDataSource1.InsertParameters.Add("productName", txtName.Text);
            SqlDataSource1.InsertParameters.Add("amount", txtAmount.Text);
            SqlDataSource1.InsertParameters.Add("price", txtPrice.Text);
            SqlDataSource1.InsertParameters.Add("producerID", ddlProducer.SelectedValue);

            SqlDataSource1.Insert();
        }
    }
}