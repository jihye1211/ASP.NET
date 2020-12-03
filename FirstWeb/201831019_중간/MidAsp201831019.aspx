<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MidAsp201831019.aspx.cs"
Inherits="201831019_중간.MidAsp201831019" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>이미지 버튼 컨트롤</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:ImageButton ID="imgWrite" runat="server" AlternateText="배화여자대학교"
OnClick="imgWrite_Click" ToolTip="글쓰기" />
<asp:ImageButton ID="imgList" runat="server" AlternateText="이름과 학번 확인하기"
OnClick="imgList_Click" ToolTip="리스트" />
</div>
</form>
<form id="form2" runat="server">
<div>
<asp:LinkButton ID="lnkDotNetKorea" runat="server"
OnClick="lnkDotNetKorea_Click">닷넷코리아로 이동</asp:LinkButton>
</div>
</form>
<div>
<asp:TextBox ID="txtNum" runat="server" />
<asp:Button ID="btnUp" runat="server" OnClick="btnUp_Click" Text="증가" />
<asp:Button ID="btnDown" runat="server" OnClick="btnDown_Click" Text="감소" />
</div>
<form id="form3" runat="server">
<div>
현재 시간:
<asp:Label ID="lblDateTime" runat="server"
BackColor="#FFFFC0" BorderColor="Red"
BorderStyle="Solid" BorderWidth="1px"
ForeColor="Blue" />
</div>
</form>
    <form id="form4" runat="server">
<div>
현재 페이지가 모든 사용자에 의해
<asp:Label ID="lblApplication" runat="server"></asp:Label>
번 호출되었습니다.<br />
현재 페이지가 나에 의해서
<asp:Label ID="lblSession" runat="server"></asp:Label>
번 호출되었습니다.<br />
나의 접속 번호:
<asp:Label ID="lblSessionID" runat="server"></asp:Label>
현재 세션 유지시간 :
<asp:Label ID="lblTimeout" runat="server"></asp:Label><br />
</div>
</form>
    <form id="form5" runat="server">
<div>
아이디 :
<asp:TextBox ID="UserID" runat="server"></asp:TextBox><br />
암호 :
<asp:TextBox ID="Password" runat="server"></asp:TextBox><br />
이름 :
<asp:TextBox ID="Name" runat="server"></asp:TextBox><br />
나이 :
<asp:TextBox ID="Age" runat="server"></asp:TextBox><br />
<br />
<asp:Button ID="btnSubmit" runat="server" Text="전송"
OnClick="btnSubmit_Click"/>
</div>
</form>
</body>
</html>