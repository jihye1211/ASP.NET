using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevASPNET
{
    public partial class FrmResponseBuffer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Expires = -1; //현재 페이지를 매번 새로 읽어옴
            Response.Buffer = true; //버퍼링 사용
            Response.Write("[1]현재 글은 보여짐 <br/>"); //화면 글쓰기
            Response.Flush(); //현재 버퍼에 있는 내용 출력
            Response.Write("[2]현재 글은 안보임<br/>"); //화면 글쓰기
            Response.Clear(); //현재 버퍼 내용 비우기
            Response.Write("[3] 보여짐<br/>"); //문자열 출력
            Response.End(); //현재 페이지 종료, Response.Flush()+End()
        }
    }
}