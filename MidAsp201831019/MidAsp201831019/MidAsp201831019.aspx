<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MidAsp201831019.aspx.cs" Inherits="MidAsp201831019.MidAsp201831019" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>MidAsp201831019</title>
    <style>
        .abs {
            /*footer 스타일*/
            display: table;
            margin-left: auto;
            margin-right: auto;
            font-family: "Noto Sans CJK KR DemiLight"
        }

        .center {
            /*가운데 정렬*/
            display: table;
            margin-left: auto;
            margin-right: auto;
        }

        .gra {
            /*이미지 부분 스타일(그라데이션 및 폰트)*/
            background: #C6FFDD; /* fallback for old browsers */
            background: -webkit-linear-gradient(to right, #f7797d, #FBD786, #C6FFDD); 
            background: linear-gradient(to right, #f7797d, #FBD786, #C6FFDD); 
            font-family: "Noto Sans CJK KR DemiLight"
        }
    </style>
</head>
<body>
    <div class="abs">
        현재 시간
                  <asp:Label ID="lblDateTime" runat="server"
                      BackColor="black"
                      BorderStyle="Solid" BorderWidth="1px"
                      ForeColor="white" /><br />
        <br />
    </div>
    <div class="center">
        <img src="images/main.png" alt="main" />
    </div>
    <div>
        <form id="form1" runat="server">
            <div class="center">
                <br />
                아이디 :
            <asp:TextBox ID="Id" runat="server" placeholder="ex. abc123"></asp:TextBox>&nbsp
            이름 :
            <asp:TextBox ID="Name" runat="server" placeholder="ex. 곽지혜"></asp:TextBox>&nbsp
            관심여행지 :
            <asp:TextBox ID="Interest" runat="server" placeholder="ex. 휴양지"></asp:TextBox>&nbsp
            전화번호 :
            <asp:TextBox ID="Phone" runat="server" placeholder="ex. 01055947427"></asp:TextBox>&nbsp
            <asp:Button ID="btnSubmit" runat="server" Text="전송" OnClick="btnSubmit_Click" />
                <br />
                <br />
                <br />
            </div>
            <div class="gra">
                <table align="center" border="0" cellspacing="50" width="800" height="300">
                    <tr bgcolor="white" align="center">
                        <td aling="center">
                            <img src="images/캡처.png" witdh="600" height="600"><br>
                            <br>
                            <font size="5" color="#000000"> #turkey <br /></font>
                            <asp:TextBox ID="txtNum" runat="server" />
                            <asp:Button ID="btnUp" runat="server" OnClick="btnUp_Click" Text="좋아요" />
                            <asp:Button ID="btnDown" runat="server" OnClick="btnDown_Click" Text="싫어요" /><br>
                            <br>
                        </td>
                        <td aling="center">
                            <img src="images/캡처2.png" witdh="600" height="600"><br>
                            <br>
                            <font size="5" color="#000000"> #santorini <br /></font>
                            <asp:TextBox ID="txtNum1" runat="server" />
                            <asp:Button ID="btnUp1" runat="server" OnClick="btnUp1_Click" Text="좋아요" />
                            <asp:Button ID="btnDown1" runat="server" OnClick="btnDown1_Click" Text="싫어요" /><br>
                            <br>
                        </td>
                        <td aling="center">
                            <img src="images/캡처3.png" witdh="600" height="600"><br>
                            <br>
                            <font size="5" color="#000000"> #laasie<br /> </font>
                            <asp:TextBox ID="txtNum2" runat="server" />
                            <asp:Button ID="btnUp2" runat="server" OnClick="btnUp2_Click" Text="좋아요" />
                            <asp:Button ID="btnDown2" runat="server" OnClick="btnDown2_Click" Text="싫어요" /><br>
                            <br>
                        </td>
                    </tr>
                </table>
            </div>
            <hr />
            <div class="abs">
                <asp:ImageButton ID="imgLink" runat="server" AlternateText="항공권 알아보기"
                    OnClick="imgLink_Click" ToolTip="스카이 스캐너" />
                <asp:ImageButton ID="imgLink2" runat="server" AlternateText="숙박 알아보기"
                    OnClick="imgLink2_Click" ToolTip="호텔스 컴바인" />
                <asp:ImageButton ID="imgLink3" runat="server" AlternateText="항공+숙박"
                    OnClick="imgLink3_Click" ToolTip="kayak" />개발자 확인하기👉
                <asp:ImageButton ID="imgWrite" runat="server" AlternateText="항공+숙박"
                    OnClick="imgWrite_Click" ToolTip="kayak" /><br />
            </div>
            <div class="abs">
                <asp:LinkButton ID="lnLink" runat="server"
                    OnClick="lnLink_Click">네이버에서 여행정보 더보기><br /></asp:LinkButton>
            </div>
            <br />
            <div class="abs">
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

                현재 파일(웹 폼)의 물리적인 전체 경로는
                <asp:Label ID="Label1" runat="server"></asp:Label> 입니다.<br />
                현재 스크립트 파일의 루트 경로는
                <asp:Label ID="Label2" runat="server"></asp:Label> 입니다.<br />
            </div>
        </form>
    </div>
</body>
</html>