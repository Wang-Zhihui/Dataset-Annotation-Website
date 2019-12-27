using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //记录session: 当前用户名
        //跳转至聊天室页面
        if (txt_id.Text != "")
        {
	    Session.Timeout = 60;
            Session["s_id"] = txt_id.Text;
            Response.Redirect("tutor.aspx");
        }
    }
}