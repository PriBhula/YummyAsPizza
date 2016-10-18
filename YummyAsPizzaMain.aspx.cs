using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YummyAsPizzaMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void pickUpButton_Click(object sender, ImageClickEventArgs e)
    {
        Session["orderType"] = "pickUp";
        Response.Redirect("YummyAsPizzaLogin.aspx");
    }
    protected void deliveryButton_Click(object sender, ImageClickEventArgs e)
    {
        Session["orderType"] = "delivery";
        Response.Redirect("YummyAsPizzaLogin.aspx");
    }
}