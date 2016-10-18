<%@ Page Title="" Language="C#" MasterPageFile="~/YummyAsPizzaMasterPage.master" AutoEventWireup="true" CodeFile="YummyAsPizzaDeliveryConfirm.aspx.cs" Inherits="YummyAsPizzaDeliveryConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="heading1" style="background-color: #C0C0C0; width: 400px;">your order:</td>
        <td class="auto-style2">
            <asp:TextBox ID="orderTBox" runat="server" CssClass="text" ForeColor="Gray" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
        <td style="background-color: #C0C0C0"><span class="heading1">Total Order Amount:<asp:Label ID="totalOLabel" runat="server" Text="$0.00"></asp:Label>
            <br />
            Delivery Charge:<asp:Label ID="deliveryCLabel" runat="server" Text="$0.00"></asp:Label>
            <br />
            TOTAL:<asp:Label ID="totalCLabel" runat="server" Font-Size="25px" Text="$0.00"></asp:Label>
            </span></td>
    </tr>
    <tr>
        <td class="heading1" style="background-color: #C0C0C0; width: 400px;">name:</td>
        <td class="auto-style2">
            <asp:TextBox ID="nameTBox" runat="server" CssClass="text" ForeColor="Gray" Width="400px"></asp:TextBox>
        </td>
        <td rowspan="2">
            <asp:ImageButton ID="updateButton" runat="server" ImageUrl="~/Images/UpdateButton.png" Width="220px" />
        </td>
    </tr>
    <tr>
        <td class="heading1" style="background-color: #C0C0C0; width: 400px;"><span class="heading1">Phone:</span></td>
        <td class="auto-style4">
            <asp:TextBox ID="phoneTBox" runat="server" CssClass="text" ForeColor="Gray" TextMode="Number" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="heading1" style="background-color: #C0C0C0; width: 400px;">address:</td>
        <td class="auto-style2">
            <asp:TextBox ID="addressTBox" runat="server" CssClass="text" ForeColor="Gray" Width="400px"></asp:TextBox>
        </td>
        <td rowspan="2">
            <asp:ImageButton ID="confirmButton" runat="server" CssClass="auto-style1" ImageUrl="~/Images/ConfirmButton.png" OnClick="confirmButton_Click" Width="220px" />
        </td>
    </tr>
    <tr>
        <td class="heading1" style="background-color: #C0C0C0; width: 400px;">location:</td>
        <td class="auto-style2">
            <asp:DropDownList ID="locationDD" runat="server" CssClass="text" ForeColor="Gray" Width="400px">
                <asp:ListItem>Wellington CBD</asp:ListItem>
                <asp:ListItem>Outside Wellington CBD</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
</table>
</asp:Content>

