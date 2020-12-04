﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevADONET
{
    public partial class FrmSqlConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSqlConnection_Click(object sender, EventArgs e)
        {
            //[1] SqlConnection클래스의 인스턴스 생성
            SqlConnection con = new SqlConnection();
            //[2] ConnectionString 속성 지정
            //[a] 직접 연결 문자열 지정
            //con.ConnectionString =
            // "server=(localdb)\\MSSQLLocalDB;"
            // +"database=DevADONET;Integrated Security=True;";
            //[b]Web.config에 설정딘 값 가져와서 지정
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "ConnectionString"].ConnectionString;
            //[3] Open() 메서드 실행: 데이터베이스 연결
            con.Open();
            //[!] 실행
            lblDisplay.Text = "데이터베이스 연결 성공";
            //[4] Close() 메서드 실행: 데이터베이스 연결 종료
            con.Close();
        }
    }
}