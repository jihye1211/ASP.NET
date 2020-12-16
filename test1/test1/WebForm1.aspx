<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="test1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h2>게시판 글쓰기</h2> <br />
        <div>
            제  목:
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="user" ErrorMessage="제목을 입력하세요"
                Display="Static"></asp:RequiredFieldValidator>
            <br />

            작성자:
            <asp:TextBox ID="user" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="user" ErrorMessage="작성자를 입력하세요"
                Display="Static"></asp:RequiredFieldValidator>
            <br />

            비밀번호:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="user" ErrorMessage="비밀번호를 입력하세요"
                Display="Static"></asp:RequiredFieldValidator>
            <br />

            내  용 : 
            <asp:TextBox ID="txtWrite" runat="server"></asp:TextBox> <br />
             <asp:Button ID="btnWrite" runat="server" Text="저장" OnClick="btnWrite_Click" />
            <asp:Label ID="lblDisplay" runat="server"></asp:Label>


        </div>
        </div>
    </form>
</body>
</html>
