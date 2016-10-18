using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YummyAsPizzaThankYou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        usernameLabel.Text = Convert.ToString(Session["customerName"]);//convert session v to string and put into label
        totalCLabel.Text = Convert.ToString(Session["orderAmount"]);
        orderTBox.Text = Convert.ToString(Session["orderContent"]);
    }
    protected void partnerButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.pizzahut.co.nz");
    }
    protected void fbButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/pizzahut");
    }
}