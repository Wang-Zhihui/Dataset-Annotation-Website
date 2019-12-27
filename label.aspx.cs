using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class label : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s_id"] == null)
        {
            Response.Redirect("index.aspx");
        }
        //string filename = Request["files[]"].ToString();
        //Console.WriteLine(filename);
    }

    protected void Button_filename_Click(object sender, EventArgs e)
    {
        string filename = Request["files[]"].ToString();
        string file_no=filename.Split('.')[0];
        file_no = file_no.Split('_')[1];
	Session.Timeout = 60;
        Session["file_no"] = file_no;
        Response.Write("<script>alert('" + file_no + "')</script>");
        Response.Redirect("upload.aspx");
        //Response.Write("<script>alert('" + file_no + "')</script>");
    }
}