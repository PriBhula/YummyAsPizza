<%@ Page Title="" Language="C#" MasterPageFile="~/YummyAsPizzaMasterPage.master" AutoEventWireup="true" CodeFile="YummyAsPizzaThankYou.aspx.cs" Inherits="YummyAsPizzaThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-family: Bebas;
            font-size: x-large;
            text-align: center;
            color: #FFFFFF;
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="title" style="background-color: #C0C0C0; text-align: center;">thank you,
                <asp:Label ID="usernameLabel" runat="server" Text="*username"></asp:Label>
                <br />
                for visiting<br />
                Yummyas pizza</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="title" style="background-color: #C0C0C0; text-align: center;">here is a summary of your order:<br />
                <asp:TextBox ID="orderTBox" runat="server" CssClass="text" ForeColor="Gray" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                <br />
                total cost:<asp:Label ID="totalCLabel" runat="server" Text="$0.00"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td rowspan="3" style="width: 300px">
                            <asp:ImageButton ID="partnerButton" runat="server" ImageUrl="~/Images/Partner.png" OnClick="partnerButton_Click" />
                        </td>
                        <td rowspan="3" style="width: 300px">
                            <asp:ImageButton ID="fbButton" runat="server" ImageUrl="~/Images/FB.png" Width="287px" OnClick="fbButton_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
</asp:Content>

