using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_state_management
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = DateTime.Now.ToString();
            if(Request.Cookies["color"]!=null)
            Label1.Style["color"] = Request.Cookies["color"]["Color"].ToString();

        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string color = drop.SelectedValue.ToString();
            Label1.Style["color"]=color;

            HttpCookie k = new HttpCookie("color");
            k.Values.Add("Color", color);
            //k.Expires = DateTime.Now.AddDays(1);
            k.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(k);
        }
    }
}