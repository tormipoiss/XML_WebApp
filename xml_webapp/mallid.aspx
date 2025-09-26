<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mallid.aspx.cs" Inherits="xml_webapp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form4" runat="server">
        <div>
            <asp:Xml ID="mallid1" runat="server" DocumentSource="~/autod.xml" TransformSource="~/mallid1.xsl"></asp:Xml>
        </div>
    </form>
</body>
</html>
