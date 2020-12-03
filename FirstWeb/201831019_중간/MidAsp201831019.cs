using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace DevStandardControl
{
    public partial class FrmImageButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.imgWrite.ImageUrl = "./images/logo.gif";
            this.imgList.ImageUrl = "./images/btn_list.gif";
        }
        protected void imgWrite_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("글쓰기 버튼 클릭됨.<br />");
        }
        protected void imgList_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("3학년 A반 201831019 곽지혜<br />");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Empty
        }
        protected void lnkDotNetKorea_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.baewha.ac.kr/intro_2021.html"); // 배화여자대학교 홈페이지 이동
        }
    }
    public partial class FrmLabel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //레이블에 현재 날짜와 시간을 출력
            this.lblDateTime.Text = DateTime.Now.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Application 변수 1 증가
            if (Application["Count"] == null)
            {
                Application.Lock();
                Application["Count"] = 1;
                Application.UnLock();
            }
            else
            {
                Application["Count"] = (int)Application["Count"] + 1;
            }
            //Session 변수 1증가
            if (Session["Count"] == null)
            {
                Session["Count"] = 1;
            }
            else
            {
                Session["Count"] = (int)Session["Count"] + 1;
            }
            this.lblApplication.Text = Application["Count"].ToString();//누구나 다 1식 증가
            this.lblSession.Text = Session["Count"].ToString(); //현재 접속자만 1씩 증가
            this.lblSessionID.Text = Session["Count"].ToString(); //현재 접속자의 고유번호
            this.lblTimeout.Text = Session["Count"].ToString(); // 현재 세션의 유지시간

            protected void Page_Load(object sender, EventArgs e)
            {
                string strUserId = "";
                string strPassword = String.Empty;
                string strName = "";
                string strAge = String.Empty;
                //strUserId = Request.QueryString["UserID"]; //Request객체의 QueryString 컬렉션
                strUserId = Request["UserID"];
                strPassword = Request.Params["Password"]; //Request 객체의 Params 컬렉션
                strName = Request.Form["Name"]; //Request 객체의 Form 컬렉션
                strAge = Request["Age"]; //Request 객체 자체로 받기
                string strMsg = String.Format("입력하신 아이디는 {0}이고 <br/>"
                + "암호는 {1}입니다. <br/>"
                + "이름은 {2}이고, <br/>"
                + "나이는 {3}살입니다.<br/>", strUserId, strPassword, strName, strAge);
                Response.Write(strMsg);
            }
            protected void btnSubmit_Click(object sender, EventArgs e)
            {
                string name = Name.Text;
                int age = Convert.ToInt16(Age.Text);
            }
        }
    }