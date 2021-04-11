using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4_LTWeb
{
    public partial class ViewCar : System.Web.UI.Page
    {
        public static List<String> carName = new List<string>();
        public static int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lbtnAddToCart_Click(object sender, EventArgs e)
        {
            //Ép sender thành dạng linkbutton, sender là
            //control đã kích hoạt sự kiện, ở đây là linkbutton
            //nên ta ép được
            LinkButton btn = sender as LinkButton;

            //Lấy control chứa control linkbutton, bởi vì mình biết
            //nó là DataListItem nên cast sang được
            DataListItem selectedItems = (DataListItem)btn.NamingContainer;

            //Dùng hàm FindControl để tìm control có trong Item của ListView
            //Bởi vì ta đã edit template nên phải tìm thông qua Item thì mới
            //lấy đc dữ liệu từ các control có trong template đó, 
            //vì control là control label nên ta ép sang label 
            String name = ((Label)selectedItems.FindControl("lblName")).Text;

            carName.Add(name);
            
            //Response.Write("<script>alert('" + carName.Count + "')</script>");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String str = "";
            for(int i = 0; i < carName.Count; i++)
            {
                str += carName[i] + ",";
            }

            Response.Write("<script>alert('" + str + "')</script>");
            Session["CarNames"] = str;
            Response.Redirect("Display.aspx");
        }
    }
}