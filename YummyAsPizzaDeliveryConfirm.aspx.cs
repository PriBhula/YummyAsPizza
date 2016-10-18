using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YummyAsPizzaDeliveryConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //put the stored variables (ordercontents, ordercost and name) into the respective labels
        orderTBox.Text = Convert.ToString(Session["orderContent"]);
        nameTBox.Text = Convert.ToString(Session["customerName"]);
        totalOLabel.Text = Convert.ToString(Session["orderAmount"]);

        decimal cost = Convert.ToDecimal(Session["orderAmount"]);//store the cost

        if (locationDD.Text == "Wellington CBD")//if within cbd
        {
            deliveryCLabel.Text = "$5.00";//change the delivery amount
            cost += 5m;//add it to cost
            totalCLabel.Text = cost.ToString();//convert to string and display
        }

        else if (locationDD.Text == "Outside Wellington CBD")//else outside cbd
        {
            deliveryCLabel.Text = "$10.00";//change to $10
            cost += 10m;//add to cost
            totalCLabel.Text = cost.ToString();//convert and display
        }
    }
    protected void confirmButton_Click(object sender, ImageClickEventArgs e)
    {
        Session["orderAmount"] = totalCLabel.Text;
        Response.Redirect("YummyAsPizzaThankYou.aspx");
    }
}