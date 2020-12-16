﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace DevADONET.Models
{
    //<summary>
    ///<summary>
    /// Memos 테이블과 일대일 매핑되는 Memo 클래스
    ///</summary>
    public class Memo
    {
        public int Num { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string txtTitle { get; set; }
        public DateTime PostDate { get; set; }
        public String PostIp { get; set; }
        public string TxtWrite { get; internal set; }
        public string txtPassword { get; internal set; }
        public string TxtUser { get; internal set; }
    }
}