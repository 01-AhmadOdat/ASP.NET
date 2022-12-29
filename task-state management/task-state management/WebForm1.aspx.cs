using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_state_management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["login"] != null)
            {
                TextBox1.Text = Request.Cookies["login"]["username"].ToString();
                TextBox2.Text = Request.Cookies["login"]["password"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (CheckBox1.Checked)
            {
                HttpCookie k = new HttpCookie("login");
                k.Values.Add("username", TextBox1.Text);
                k.Values.Add("password", TextBox2.Text);
                //k.Expires = DateTime.Now.AddDays(1);
                k.Expires = DateTime.Now.AddYears(1);
                Response.Cookies.Add(k);
                //Response.Redirect("webform2.aspx");
            }

        }
    }
}