<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inimesed.aspx.cs" Inherits="xml_webapp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form3" runat="server">
        <input type="number" name="vähimSünniaasta" />
        <input type="number" name="suurimSünniaasta" />
        <asp:Button runat="server" ID="btnApply" Text="Filtreeri" OnClick="btnApply_Click" />
        <asp:Xml ID="parameetritega2" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/parameetritega2.xsl" />
    </form>
</body>
</html>
