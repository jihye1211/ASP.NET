<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCalendar.aspx.cs"
Inherits="DevStandardControl.FrmCalendar" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>캘린더 컨트롤</title>
</head>
<body>
<form id="form1" runat="server">
<div>
    <h1>일정관리</h1>
<asp:Calendar ID="Calendar1" runat="server" SelectionMode="Day" 
           OnSelectionChanged="Selection_Change"
    BackColor="#FFFFCC"
BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest"
Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px"
ShowGridLines="true" Width="600px">
<DayHeaderStyle BackColor="#FFFF66" Font-Bold="true" Height="1px"/>
<NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC"/>
<OtherMonthDayStyle ForeColor="#CC9966"/>
<SelectedDayStyle BackColor="#CCCCFF" Font-Bold="true" />
<SelectorStyle BackColor="#FFCC66" />
<TitleStyle BackColor="#990000" Font-Bold="true" Font-Size="9pt"
ForeColor="#FFFFCC" />
<TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
</asp:Calendar>
    날 짜 :      <asp:Label id="date" runat="server" /><b>
<asp:Literal ID="ctlLabe1" runat="server"></asp:Literal></b><br />
    일 정 : <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox><br />
    알 람 : <asp:RadioButton ID="rdoYes" runat="server" GroupName="YesOrNo" />
<asp:RadioButton ID="rdoNo" runat="server" GroupName="YesOrNo" /><br />
<asp:Button ID="btnOK" runat="server" Text="확인" OnClick="btnOK_Click" />
<asp:Label ID="lblDisplay" runat="server"></asp:Label>
</div>
</form>
</body>
</html>