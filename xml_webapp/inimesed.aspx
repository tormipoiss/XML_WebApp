<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inimesed.aspx.cs" Inherits="xml_webapp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <asp:Xml ID="inimesed1" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/inimesed.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed2" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/inimesed1.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed3" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/inimesed2.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed4" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/inimesed3.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed5" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/Inimesed_mitu_kordust.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed6" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/Inimesed_mitu_kordust-vahe-alla-viie.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed7" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/Inimesed_mitu_kordust_ristuvad_perenimed.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed8" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/Inimesed_mitu_kordust-ristuvad-perenimed-ise-tyhi.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed9" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/universaalne_struktuuri_vaade.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="inimesed10" runat="server" DocumentSource="~/inimesed.xml" TransformSource="~/universaalne_tabeli_vaade.xsl"></asp:Xml>
        </div>
    </form>
</body>
</html>
