<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1_3_konvertera_temperaturer._default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <h1>Konvertera temperaturer</h1>

    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Startemperatur"></asp:Label><br />
        <asp:TextBox ID="StartTextBox" runat="server"></asp:TextBox><br />
        
        <asp:Label ID="Label2" runat="server" Text="Sluttemperatur"></asp:Label><br />
        <asp:TextBox ID="SlutTextBox" runat="server"></asp:TextBox><br />
        
        <asp:Label ID="Label3" runat="server" Text="Temperatursteg"></asp:Label><br />
        <asp:TextBox ID="StegTextBox" runat="server"></asp:TextBox><br />
       
        
        
        <asp:Label ID="Label4" runat="server" Text="Typ av konvertering"></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Text="Celsius till Fahrenheit"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="TypeOfConversion" Checked="True" /><br />
        <asp:Label ID="Label6" runat="server" Text="Fahrenheit till Celsius"></asp:Label>
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="TypeOfConversion" /><br />
        

        <asp:Button ID="SendButton" runat="server" Text="Konvertera" OnClick="SendButton_Click" />


        <asp:Table ID="ResultTable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell ID="Header1"></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="Header2"></asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
        

    </div>
    </form>
</body>
</html>
