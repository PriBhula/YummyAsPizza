using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YummyAsPizzaPickUpConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        totalAmountLabel.Text = Convert.ToString(Session["orderAmount"]);
        orderTBox.Text = Convert.ToString(Session["orderContent"]);
        nameTBox.Text = Convert.ToString(Session["customerName"]);
    }
    protected void confirmButton_Click(object sender, ImageClickEventArgs e)
    {
        if (phoneTBox.Text == " ")
        {
            phoneValid.Text = "Please enter a phone number";
        }

        else
        {
            Response.Redirect("YummyAsPizzaThankYou.aspx");
        }
    }

    protected void calendar_SelectionChanged(object sender, EventArgs e)
    {
        calendarTBox.Text = calendar.SelectedDate.Date.ToString();
        if (calendar.SelectedDate < DateTime.Now.Date)
        {
            calendarValid.Text = "Please select a valid date";
        }
        else
        {
            calendarValid.Text = " ";

        }
    }
}