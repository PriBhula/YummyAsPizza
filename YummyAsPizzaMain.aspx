<%@ Page Title="" Language="C#" MasterPageFile="~/YummyAsPizzaMasterPage.master" AutoEventWireup="true" CodeFile="YummyAsPizzaMain.aspx.cs" Inherits="YummyAsPizzaMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table style="width:100%; text-align: center;">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="title" style="background-color: #C0C0C0" colspan="3"><span class="title">Select an order method:</span></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3" colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style6" style="text-align: center; width: auto">
                <asp:ImageButton ID="pickUpButton" runat="server" Height="95px" ImageAlign="Middle" ImageUrl="~/Images/PickUpButton.png" Width="194px" OnClick="pickUpButton_Click" />
            </td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3" colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style6" style="text-align: center; width: auto">
                <asp:ImageButton ID="deliveryButton" runat="server" Height="95px" ImageUrl="~/Images/DeliveryButton.png" Width="194px" OnClick="deliveryButton_Click" />
            </td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3" style="background-color: #C0C0C0" colspan="3"><span class="text" style="text-align: center">(Only for orders $30 or more, excl. a $5 fee)</span></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

