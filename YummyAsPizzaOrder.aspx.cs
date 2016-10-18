using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YummyAsPizzaOrder : System.Web.UI.Page
{
    decimal HAWAIIAN_PIZZA_DECIMAL = 7.90m;
    decimal SEAFOOD_PIZZA_DECIMAL = 6.90m;
    decimal VEGE_PIZZA_DECIMAL = 6.50m;
    decimal SALAD_DECIMAL = 4.50m;
    decimal KF_DECIMAL = 5.90m;
    decimal PEPSI_DECIMAL = 3.60m;
    decimal OJ_DECIMAL = 4.10m;

    static decimal currentOrderDecimal = 0.00m;
    static decimal totalOrderDecimal = 0.00m;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void checkoutButton_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["orderType"] == "pickUp")//if pickup was clicked on the main page...
            {
            if (currentOrderTBox.Text == "Please select some items")//nothing has been selected
                {
                    warningLabel.Text = "Please select at least one item before confirming the order";//show warning
                }
            else{
                Session["orderAmount"] = totalAmountLabel.Text;//store total amount
                Session["orderContent"] = currentOrderTBox.Text;//store order
                Response.Redirect("YummyAsPizzaPickUpConfirm.aspx");//redirect to pickupconfirm
                }
            }
    
        else if (Session["orderType"] == "delivery")//else if delivery was clicked...
            {
            if (currentOrderTBox.Text== "Please select some items" || totalOrderDecimal < 30){//if nothing is selected or order is less than $30
                warningLabel.Text = "Minimum order value for delivery is $30";//show warning
            }
            else{
                Session["orderAmount"] = totalAmountLabel.Text;//store total amount
                Session["orderContent"] = currentOrderTBox.Text;//store order
                Response.Redirect("YummyAsPizzaDeliveryConfirm.aspx");//redirect to deliveryconfirm
            }
        }
    }
    protected void addHPButton_Click(object sender, ImageClickEventArgs e)
    {
        if (currentOrderTBox.Text == "Please select some items")
        {
            currentOrderTBox.Text = null;
        }

        currentOrderTBox.Text += hawQDD.Text + "x Hawaiian Pizza \n";
        calculateOrder(int.Parse(hawQDD.Text), HAWAIIAN_PIZZA_DECIMAL);
        hawQDD.Text = "1";
    }
    protected void addSPButton_Click(object sender, ImageClickEventArgs e)
    {
        if (currentOrderTBox.Text == "Please select some items")
        {
            currentOrderTBox.Text = null;
        }
        currentOrderTBox.Text += sfoodQDD.Text + "x Seafood Pizza \n";
        calculateOrder(int.Parse(sfoodQDD.Text), SEAFOOD_PIZZA_DECIMAL);
        sfoodQDD.Text = "1";
    }
    protected void addVPButton_Click(object sender, ImageClickEventArgs e)
    {
        if (currentOrderTBox.Text == "Please select some items")
        {
            currentOrderTBox.Text = null;
        }
        currentOrderTBox.Text += vegQDD.Text + "x Vegetarian Pizza \n";
        calculateOrder(int.Parse(vegQDD.Text), VEGE_PIZZA_DECIMAL);
        vegQDD.Text = "1";
    }
    protected void addSaButton_Click(object sender, ImageClickEventArgs e)
    {
        if (currentOrderTBox.Text == "Please select some items")
        {
            currentOrderTBox.Text = null;
        }
        currentOrderTBox.Text += salQDD.Text + "x Salad \n";
        calculateOrder(int.Parse(salQDD.Text), SALAD_DECIMAL);
        salQDD.Text = "1";
    }
    protected void addKFButton_Click(object sender, ImageClickEventArgs e)
    {
        if (currentOrderTBox.Text == "Please select some items")
        {
            currentOrderTBox.Text = null;
        }
        currentOrderTBox.Text += kFQDD.Text + "x Kumura Fries \n";
        calculateOrder(int.Parse(kFQDD.Text), KF_DECIMAL);
        kFQDD.Text = "1";
    }
    protected void addPpButton_Click(object sender, ImageClickEventArgs e)
    {
        if (currentOrderTBox.Text == "Please select some items")
        {
            currentOrderTBox.Text = null;
        }
        currentOrderTBox.Text += pepQDD.Text + "x Pepsi \n";
        calculateOrder(int.Parse(pepQDD.Text), PEPSI_DECIMAL);
        pepQDD.Text = "1";
    }
    protected void addOJButton_Click(object sender, ImageClickEventArgs e)
    {
        if (currentOrderTBox.Text == "Please select some items")
        {
            currentOrderTBox.Text = null;
        }
        currentOrderTBox.Text += oJQDD.Text + "x Orange Juice \n";
        calculateOrder(int.Parse(oJQDD.Text), OJ_DECIMAL);
        oJQDD.Text = "1";
    }

    public void calculateOrder(int quantity, decimal price)
    {
        currentOrderDecimal = (quantity * price);//calculate the amount of the current order, given the q (amount in ddlist) and constant price
        totalOrderDecimal += currentOrderDecimal;//add the current to the running total
        totalAmountLabel.Text = totalOrderDecimal.ToString();//convert to string and update label

    }
}