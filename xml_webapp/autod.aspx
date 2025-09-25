<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autod.aspx.cs" Inherits="xml_webapp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Xml ID="autod1" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod2" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod2.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod3" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod3.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod4" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod4.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod5" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod5.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod6" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod6.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod7" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod7.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod8" runat="server" DocumentSource="~/autod.xml" TransformSource="~/autod8.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod9" runat="server" DocumentSource="~/autod.xml" TransformSource="~/universaalne_struktuuri_vaade.xsl"></asp:Xml>
        </div>
        <div>
            <asp:Xml ID="autod10" runat="server" DocumentSource="~/autod.xml" TransformSource="~/universaalne_tabeli_vaade.xsl"></asp:Xml>
        </div>
    </form>
</body>
</html>
