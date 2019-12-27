using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class part_5 : System.Web.UI.Page
{
    static string file_no_result_part_5 = "";
    static string user_id = " ";
    public static string get_file_no_result_part_5()
    {
        return file_no_result_part_5;
    }
    public static string get_user_id()
    {
        return user_id;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["s_id"] != null)
            {
                user_id = Session["s_id"].ToString();

            }
            if (Session["file_no"] != null)
            {
                //Response.Write("<script>alert('" + Session["file_no"].ToString() + "')</script>");
                file_no_result_part_5 = Session["file_no"].ToString();
                Session["file_no"] = null;
            }
        }
    }

    protected void download_Button_click(object sender, EventArgs e)
    {
        Button Btn = sender as Button;
        string id_str = Btn.CommandArgument.ToString(); 
        string strFilePath = Server.MapPath("~/" + Session["s_id"].ToString()) + "/config/" + Session["s_id"].ToString() + id_str;//服务器文件路径
        FileInfo fileInfo = new FileInfo(strFilePath);
        Response.AddHeader("Content-Disposition", "attachment;filename=" + Server.UrlEncode(fileInfo.Name));
        Response.ContentType = "application/x-bittorrent";
        Response.WriteFile(fileInfo.FullName);
        Response.End();
       
    }
    

}