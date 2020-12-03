using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidAsp201831019
{
    public partial class MidAsp201831019 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.imgLink.ImageUrl = "./images/skyscanner.png";
            this.imgLink2.ImageUrl = "./images/hotelscom.jpg";
            this.imgLink3.ImageUrl = "./images/kayak.png";
            this.imgWrite.ImageUrl = "./images/dev.gif";
            if (!Page.IsPostBack) // Page에 IsPostBack(다시 게시)이 true가 아니면 => 처음 로드
            {
                txtNum.Text = "0"; //처음 로드할 때만 0으로 초기화
                txtNum1.Text = "0";
                txtNum2.Text = "0";
            }
            // 현재 날짜와 시간 출력
            this.lblDateTime.Text = DateTime.Now.ToString();

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
            this.lblApplication.Text = Application["Count"].ToString();//누구나 다 1씩 증가
            this.lblSession.Text = Session["Count"].ToString(); //현재 접속자만 1씩 증가
            this.lblSessionID.Text = Session["Count"].ToString(); //현재 접속자의 고유번호
            this.lblTimeout.Text = Session["Count"].ToString(); // 현재 세션의 유지시간
            //현재 웹 폼의 서버측의 물리적 경로
            this.Label1.Text = Server.MapPath("."); //같은 경로
            //현재 스크립트 파일의 루트 경로
            this.Label2.Text = Request.ServerVariables["SCRIPT_NAME"];

            string strId = ""; // 아이디
            string strName = String.Empty; //이름
            string strInterest = String.Empty;
            string strPhone = String.Empty;
            strId = Request["Id"];
            strName = Request.Params["Name"]; //Request 객체의 Params 컬렉션
            strInterest = Request["Interest"]; //Request 객체 자체로 받기
            strPhone = Request.Form["Phone"]; //Request 객체의 Form 컬렉션

            string strMsg = String.Format("안녕하세요 {0}님, 현재 {1} 아이디로 로그인 중입니다.<br/>"
            , strName, strId);
            Response.Write(strMsg);
        }
        protected void imgLink_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.skyscanner.co.kr/");
        }
        protected void imgLink2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.hotelscombined.co.kr/");
        }
        protected void imgLink3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.kayak.co.kr/");
        }
        protected void imgWrite_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("개발자👩 💻-3학년 A반 201831019 곽지혜<br />");
        }
        protected void lnLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EC%97%AC%ED%96%89"); // 네이버에서 여행정보 더보기
        }
        protected void btnUp_Click(object sender, EventArgs e) // 클릭하면 증가가 되도록 역할을 함
        {
            txtNum.Text = Convert.ToString(Convert.ToInt32(txtNum.Text) + 1); // 문자형을 숫자형으로 변환해줌
            // convert 객체에 ToInt32를 이용함. (Convert.ToInt32(txtNum.Text)+1)에서 숫자형으로 변환한 후 
            // Convert.ToString을 통해 다시  문자열로 변환
        }
        protected void btnDown_Click(object sender, EventArgs e)
        {
            txtNum.Text = Convert.ToString(int.Parse(txtNum.Text) - 1);
        }
        protected void btnUp1_Click(object sender, EventArgs e)
        {
            txtNum1.Text = Convert.ToString(Convert.ToInt32(txtNum1.Text) + 1);
        }
        protected void btnDown1_Click(object sender, EventArgs e)
        {
            txtNum1.Text = Convert.ToString(int.Parse(txtNum1.Text) - 1);
        }
        protected void btnUp2_Click(object sender, EventArgs e)
        {
            txtNum2.Text = Convert.ToString(Convert.ToInt32(txtNum2.Text) + 1);
        }
        protected void btnDown2_Click(object sender, EventArgs e)
        {
            txtNum2.Text = Convert.ToString(int.Parse(txtNum2.Text) - 1);
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = Name.Text;
            string name = Name.Text;
            string interest = Name.Text;
            string phon = Name.Text;
        }
    }
}