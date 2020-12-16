using DevADONET.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnWrite_Click(object sender, EventArgs e)
        {
            //[0] 변수 선언부
            Memo memo = new Memo();
            memo.txtTitle = txtTitle.Text;
            memo.TxtUser = txtUser.Text;
            memo.txtPassword = txtPassword.Text;
            memo.TxtWrite = txtWrite.Text;
            //[1] 커넥션
            SqlConnection con = new SqlConnection(ConfigurationManager
            .ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            //[2] 커맨드
            SqlCommand cmd = new SqlCommand("WriteMemo", con);
            //cmd.Connection=con;
            //cmd.CommandText="WriteMemo";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //[!] 파라미터 추가
            cmd.Parameters.AddWithValue("@Name", memo.Name);
            cmd.Parameters.AddWithValue("@Email", memo.Email);
            cmd.Parameters.AddWithValue("@Title", memo.txtTitle);
            cmd.Parameters.AddWithValue("@PostIp", memo.PostIp);
            //[!] 실행
            cmd.ExecuteNonQuery();
            //[3] 마무리
            con.Close();
            //lblDisplay.Text = "저장되었습니다.";
        }
    }
}