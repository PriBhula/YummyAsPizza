<%@ Page Title="" Language="C#" MasterPageFile="~/YummyAsPizzaMasterPage.master" AutoEventWireup="true" CodeFile="YummyAsPizzaLogin.aspx.cs" Inherits="YummyAsPizzaLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td style="background-color: #C0C0C0; text-align: center; width: 400px;"><span class="heading1">Username:</span><span class="heading2"><asp:TextBox ID="usernameTBox" runat="server" CssClass="text" ForeColor="Gray"></asp:TextBox>
                    </span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center; width: auto;">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4" style="background-color: #C0C0C0; text-align: center;"><span class="heading1">Password:</span><span class="heading2"><asp:TextBox ID="passwordTBox" runat="server" CssClass="text" TextMode="Password" ForeColor="Gray"></asp:TextBox>
                    </span></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center; width: auto;">
                    <asp:ImageButton ID="loginButton" runat="server" Height="95px" ImageUrl="~/Images/LoginButton.png" OnClick="loginButton_Click" Width="194px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>

