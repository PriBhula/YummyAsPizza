<%@ Page Title="" Language="C#" MasterPageFile="~/YummyAsPizzaMasterPage.master" AutoEventWireup="true" CodeFile="YummyAsPizzaPickUpConfirm.aspx.cs" Inherits="YummyAsPizzaPickUpConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="heading1" style="width: 400px; background-color: #C0C0C0;">your order:</td>
        <td style="width: 400px">
            <asp:TextBox ID="orderTBox" runat="server" CssClass="text" ForeColor="Gray" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
        <td class="heading1" style="background-color: #C0C0C0">your order: $<asp:Label ID="totalAmountLabel" runat="server" Text="0.00"></asp:Label>
            <br />
            <asp:Label ID="phoneValid" runat="server"></asp:Label>
            <br />
            <asp:Label ID="calendarValid" runat="server"></asp:Label>
            <br />
        </td>
    </tr>
    <tr>
        <td class="heading1" style="width: 400px; background-color: #C0C0C0;">name:</td>
        <td style="width: 400px">
            <asp:TextBox ID="nameTBox" runat="server" CssClass="text" ForeColor="Gray" Width="400px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="heading1" style="width: 400px; background-color: #C0C0C0;">phone:</td>
        <td style="width: 400px">
            <asp:TextBox ID="phoneTBox" runat="server" CssClass="text" ForeColor="Gray" Width="400px"></asp:TextBox>
        </td>
        <td class="heading1" style="background-color: #C0C0C0">time:</td>
    </tr>
    <tr>
        <td class="heading1" rowspan="2" style="width: 400px; background-color: #C0C0C0;">date:</td>
        <td rowspan="2" style="width: 400px">
            <asp:Calendar ID="calendar" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="400px" OnSelectionChanged="calendar_SelectionChanged">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
        </td>
        <td>
            <asp:TextBox ID="calendarTBox" runat="server" CssClass="text" ForeColor="Gray"></asp:TextBox>
            <asp:DropDownList ID="timeDD" runat="server" CssClass="text" ForeColor="Gray">
                <asp:ListItem>9am</asp:ListItem>
                <asp:ListItem>10am</asp:ListItem>
                <asp:ListItem>11am</asp:ListItem>
                <asp:ListItem>12pm</asp:ListItem>
                <asp:ListItem>1pm</asp:ListItem>
                <asp:ListItem>2pm</asp:ListItem>
                <asp:ListItem>3pm</asp:ListItem>
                <asp:ListItem>4pm</asp:ListItem>
                <asp:ListItem>5pm</asp:ListItem>
                <asp:ListItem>6pm</asp:ListItem>
                <asp:ListItem>7pm</asp:ListItem>
                <asp:ListItem>8pm</asp:ListItem>
                <asp:ListItem>9pm</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:ImageButton ID="confirmButton" runat="server" ImageUrl="~/Images/ConfirmButton.png" OnClick="confirmButton_Click" Width="220px" />
        </td>
    </tr>
</table>
</asp:Content>

