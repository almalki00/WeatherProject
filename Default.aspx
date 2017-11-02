<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <h1>Weather Details</h1>
            <b>City Name:</b>
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>&nbsp
            <b>State Name: </b>
            <asp:TextBox ID="txtState" runat="server"></asp:TextBox>

            <asp:Button runat="server" ID="Button1" Text="Get Weather" OnClick="GetWeather" />
            <br />
            <br />
            <b>Weather :</b>
            <asp:Label runat="server" ID="lblWeather"></asp:Label>
            <br />
            <b>Temperature: </b>
            <asp:Label runat="server" ID="lbTemp"></asp:Label>
            <br />
            <b>Temperature in F":</b>
            <asp:Label runat="server" ID="lbltempinf"></asp:Label>
            <br />
            <b>Temperature in C":</b>
            <asp:Label runat="server" ID="lbltempinc"></asp:Label>
            <br />
            <b>Relative_humidity :</b>
            <asp:Label runat="server" ID="lblhumidity"></asp:Label>
            <br />
            <asp:Label runat="server" ID="lblError" Style="color: Red"></asp:Label>
        </div>
         <%--<div>
            <h1>Geographical Details</h1>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="">--Select--</asp:ListItem>
                <asp:ListItem Value="Paris, France">Paris, France</asp:ListItem>
                <asp:ListItem Value="Delhi, India">Delhi, India</asp:ListItem>
                <asp:ListItem Value="Francisco">CA, San_Francisco</asp:ListItem>
            </asp:DropDownList>
            <asp:Button runat="server" ID="btnGetGeographicalDetails" Text="Get Details" OnClick="GetGeographicalDetails" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>--%>
    </form>

</body>
</html>
