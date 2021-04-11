using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4_LTWeb
{
    public partial class Display : System.Web.UI.Page
    {
        String cmd = "select MaSP, TenSP, Gia from Cars where TenSP in (";
        int total = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            String carNames = Session["CarNames"].ToString();
            String[] names = carNames.Split(',');

          
            for (int i = 0; i < names.Length - 1; i++)
            {
                if (i == names.Length - 2)
                {
                    cmd += "'" + names[i] + "'";
                }
                else
                {
                    cmd += "'" + names[i] + "', ";
                }

            }

            cmd += ")";

            SqlDataSource1.SelectCommand = cmd;
           
            for (int i = 0; i < names.Length - 1; i++)
            {
                total += Convert.ToInt32(GridView1.Rows[i].Cells[2].Text);
            }

            lblTotal.Text = total.ToString();
            
        }

        protected void ddlPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            int currentTotal = total;

            if (ddlPayment.SelectedIndex == 0)
            {
                lblTotal.Text = (currentTotal - 100).ToString();
            }
            if (ddlPayment.SelectedIndex == 1)
            {
                lblTotal.Text = (currentTotal - 200).ToString();
            }
            if (ddlPayment.SelectedIndex == 2)
            {
                lblTotal.Text = currentTotal.ToString();
            }
           
        }
    }
}