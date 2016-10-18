<%@ Page Title="" Language="C#" MasterPageFile="~/YummyAsPizzaMasterPage.master" AutoEventWireup="true" CodeFile="YummyAsPizzaOrder.aspx.cs" Inherits="YummyAsPizzaOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr class="heading2">
            <td>&nbsp;</td>
            <td colspan="4" style="background-color: #C0C0C0; width: 600px;"><span class="title">Welcome,</span><span class="heading1"> </span>
                <asp:Label ID="usernameLabel" runat="server" CssClass="title" Text="*username"></asp:Label>
            </td>
            <td style="width: 400px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="heading2" colspan="4" style="background-color: #C0C0C0; width: 600px;"><span class="heading1">Pizzas</span></td>
            <td class="heading2" style="background-color: #C0C0C0"><span class="heading1">Current Order:</span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text" style="background-color: #C0C0C0; width: 150px;">
                <asp:Image ID="Image2" runat="server" Height="105px" ImageUrl="~/Images/HawaiianPizza.jpg" Width="150px" />
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 600px;"><span class="heading2">Hawaiian Pizza</span><span class="text"> - $7.90</span><br />
                A toasted cheddaar crust, smoked ham, sweet pineapple chunks, and crisp green peppers</td>
            <td class="text" style="background-color: #C0C0C0; width: 50px;">
                Quantity:<asp:DropDownList ID="hawQDD" runat="server" CssClass="text" ForeColor="Gray">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 100px;">
                <asp:ImageButton ID="addHPButton" runat="server" Height="50px" ImageUrl="~/Images/AddButton.png" OnClick="addHPButton_Click" />
            </td>
            <td style="width: 400px" rowspan="5"><span class="heading1">
                <asp:TextBox ID="currentOrderTBox" runat="server" CssClass="text" ForeColor="Gray" Height="449px" TextMode="MultiLine" Width="360px">Please select some items</asp:TextBox>
                </span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text" style="background-color: #C0C0C0; width: 150px;">
                <asp:Image ID="Image3" runat="server" Height="105px" ImageUrl="~/Images/SeafoodPizza.jpg" Width="150px" />
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 600px;"><span class="heading2">Seafood Pizza </span><span class="text">- $6.90</span><br />
                Tuna, onion, pineapple, and crabmeat sticks with mozzarella cheese and Thoussand Island dressing</td>
            <td class="text" style="background-color: #C0C0C0; width: 50px;">
                Quantity:<asp:DropDownList ID="sfoodQDD" runat="server" CssClass="text" ForeColor="Gray">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 100px;">
                <asp:ImageButton ID="addSPButton" runat="server" Height="50px" ImageUrl="~/Images/AddButton.png" OnClick="addSPButton_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text" style="background-color: #C0C0C0; width: 150px;">
                <asp:Image ID="Image4" runat="server" Height="105px" ImageUrl="~/Images/VegiePizza.jpg" Width="150px" />
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 600px;"><span class="heading2">Vegetarian Pizza </span><span class="text">- $6.50</span><br />
                Fresh white mushrooms, sweet red onions, crisp red peppers and diced tomatoes</td>
            <td class="text" style="background-color: #C0C0C0; width: 50px;">
                Quantity:<asp:DropDownList ID="vegQDD" runat="server" CssClass="text" ForeColor="Gray">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 100px;">
                <asp:ImageButton ID="addVPButton" runat="server" Height="50px" ImageUrl="~/Images/AddButton.png" OnClick="addVPButton_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="heading2" colspan="4" style="background-color: #C0C0C0; width: 600px;"><span class="heading1">sides</span></tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text" style="background-color: #C0C0C0; width: 150px;">
                <asp:Image ID="Image5" runat="server" Height="105px" ImageUrl="~/Images/Salad.jpg" Width="150px" />
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 600px;"><span class="heading2">Salad</span> - $4.50</td>
            <td class="text" style="background-color: #C0C0C0; width: 50px;">
                Quantity:<asp:DropDownList ID="salQDD" runat="server" CssClass="text" ForeColor="Gray">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 100px;">
                <asp:ImageButton ID="addSaButton" runat="server" Height="50px" ImageUrl="~/Images/AddButton.png" OnClick="addSaButton_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1" style="background-color: #C0C0C0; width: 150px;">
                <asp:Image ID="Image6" runat="server" Height="105px" ImageUrl="~/Images/KumaraFries.jpg" Width="150px" />
            </td>
            <td class="auto-style1" style="background-color: #C0C0C0;"><span class="heading2">Kumura Fries</span><span class="text"> - $5.90</span></td>
            <td class="auto-style2" style="background-color: #C0C0C0;">
                <span class="text">Quantity:</span><asp:DropDownList ID="kFQDD" runat="server" CssClass="text" ForeColor="Gray">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style3" style="background-color: #C0C0C0;">
                <asp:ImageButton ID="addKFButton" runat="server" Height="50px" ImageUrl="~/Images/AddButton.png" OnClick="addKFButton_Click" />
            </td>
            <td class="auto-style1" style="background-color: #C0C0C0"><span class="heading2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total:</span> <span class="text">
                <asp:Label ID="totalAmountLabel" runat="server" CssClass="heading2" Text="$0.00"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="checkoutButton" runat="server" Height="57px" ImageAlign="Middle" ImageUrl="~/Images/CheckoutButton.png" Width="110px" OnClick="checkoutButton_Click" />
                </span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="heading2" colspan="4" style="background-color: #C0C0C0; width: 600px;"><span class="heading1">drinks</span><td style="width: 400px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="heading2" style="background-color: #C0C0C0; width: 150px;">
                <asp:Image ID="Image7" runat="server" Height="105px" ImageUrl="~/Images/Pepsi.jpg" Width="150px" />
            </td>
            <td class="auto-style1" style="background-color: #C0C0C0; width: 600px;"><span class="heading2">Pepsi </span><span class="text">- $3.60</span></td>
            <td class="text" style="background-color: #C0C0C0; width: 50px;">
                Quantity:<asp:DropDownList ID="pepQDD" runat="server" CssClass="text" ForeColor="Gray" >
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 100px;">
                <asp:ImageButton ID="addPpButton" runat="server" Height="50px" ImageUrl="~/Images/AddButton.png" OnClick="addPpButton_Click" />
            </td>
            <td style="width: 400px; background-color: #C0C0C0;" aria-live="off" class="text">
                <asp:Label ID="warningLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text" style="background-color: #C0C0C0; width: 150px;">
                <asp:Image ID="Image8" runat="server" Height="105px" ImageUrl="~/Images/OrangeJuice.jpg" Width="150px" />
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 600px;"><span class="heading2">Orange Juice</span> - $4.10<td class="text" style="background-color: #C0C0C0; width: 50px;">
                Quantity:<asp:DropDownList ID="oJQDD" runat="server" CssClass="text" ForeColor="Gray">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text" style="background-color: #C0C0C0; width: 100px;">
                <asp:ImageButton ID="addOJButton" runat="server" Height="50px" ImageUrl="~/Images/AddButton.png" OnClick="addOJButton_Click" />
            </td>
            <td style="width: 400px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

