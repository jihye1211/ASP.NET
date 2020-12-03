<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmResponseRedirect.aspx.cs" Inherits="DevASPNET.FrmResponseRedirect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnDotNetkorea" runat="server" Text="닷넷코리아"
                OnClick="btnDotNetKorea_Click"/>
            <br />
            <asp:LinkButton ID="btnDotDevLec" runat="server" Text="닷넷코리아"
            OnClick="btnDevLec_Click">데브렉</asp:LinkButton>
            <br />
            <asp:ImageButton ID="btnVisualAcademy" runat="server"
                AlternateTex="비주얼아카데미"
                ToolTip="화와소" OnClic="btnVisualAcademy_Click"
                Style="height:16px" /><br />
        </div>
    </form>
</body>
</html>
