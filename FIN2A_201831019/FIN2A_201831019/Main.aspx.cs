using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace DevStandardControl
{
    public partial class FrmCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //리터럴에 날짜 출력
            ctlLabel1.Text = DateTime.Now.ToShortDateString();
            rdoYes.Text = "예";
            rdoNo.Text = "아니오";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //선택된 날짜를 출력
            Response.Write(Calendar1.SelectedDate.ToShortDateString() + "<hr/>");
        }
        void Selection_Change(Object sender, EventArgs e)
        {
            date.Text = Calendar1.SelectedDate.ToShortDateString();
        }
        protected void btnOK_Click(object sender, EventArgs e)
        {
            string strMsg=" ";
            if (this.rdoYes.Checked)
            {
                strMsg += "일정" + txtTitle + "알람이 설정되었음 <br />";
            }
            else
            {
                strMsg += "일정"+txtTitle+"알람은 취소되었음";
            }
            lblDisplay.Text = strMsg;
        }
    }
}