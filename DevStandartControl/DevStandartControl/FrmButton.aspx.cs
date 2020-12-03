using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace DevStandardControl
{
    public partial class FrmButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            // 페이지가 로드 될 때 
            if (!Page.IsPostBack) // Page에 IsPostBack(다시 게시)이 true가 아니면 => 처음 로드
            {
                txtNum.Text = "0"; //처음 로드할 때만 0으로 초기화
            }
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
    }
}