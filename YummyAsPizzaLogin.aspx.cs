using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YummyAsPizzaLogin : System.Web.UI.Page
{
    //EXTRA FEATURE: on the thankyou page, there are two buttons which redirect out to external websites.
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginButton_Click(object sender, ImageClickEventArgs e)
    {
        string[] usernames = new string[5];
        usernames[0] = "bhulapriy";
        usernames[1] = "barapshwe";
        usernames[2] = "coolkid101";
        usernames[3] = "swagalicious";
        usernames[4] = "mumanddad";

        string password = null;

        Session["customerName"] = usernameTBox.Text;

        Response.Redirect("YummyAsPizzaOrder.aspx");
    }
}
