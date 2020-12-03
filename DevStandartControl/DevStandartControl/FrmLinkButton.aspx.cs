using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace DevStandardControl
{
    public partial class FrmLinkButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Empty
        }
        protected void lnkDotNetKorea_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.dotnetkorea.com/"); //닷네코리아 이동
        }
    }
}