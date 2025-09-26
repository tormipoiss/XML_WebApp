<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="elizabeth-ii-sugupuu.aspx.cs" Inherits="xml_webapp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form5" runat="server">
        <div>
            <h3>Otsi nime järgi</h3>
            <p>
                <asp:Label ID="LabelSymbol" runat="server" Text="Nimi sisaldab:"></asp:Label>
                <asp:TextBox ID="TextBoxSymbol" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="LabelLength" runat="server" Text="Nime täpne pikkus:"></asp:Label>
                <asp:TextBox ID="TextBoxLength" runat="server" TextMode="Number"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="ButtonSearch" runat="server" Text="Otsi" OnClick="ButtonSearch_Click" />
            </p>
        </div>
        <div>
            <asp:Xml ID="elizabeth1" runat="server" DocumentSource="~/Elizabeth_ii_sugupuu/elizabeth_ii_sugupuu.xml" TransformSource="~/Elizabeth_ii_sugupuu/elizabeth-ii-sugupuu.xsl"></asp:Xml>
        </div>
    </form>
</body>
</html>
