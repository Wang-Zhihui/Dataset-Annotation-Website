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
        if (Session["s_id"] == null)
        {
            Response.Redirect("index.aspx");
        }
        txt_id.Text = "\n请仅选择您这次标注完刚保存的csv结果文件上传。" + "\n文件名将由服务器自动生成，您只需要选对文件上传即可，不需要重命名。" + "\n如果你上传错了文件，或想修改已上传的文件，请联系管理员。";
        //Session["file_no"]
    }

    protected void btnUpLoad_Click(object sender, EventArgs e)
    {
        //取出所选文件的本地路径
        string fullFileName = this.UpLoad.PostedFile.FileName;
        //从路径中截取出文件名
        string fileName = fullFileName.Substring(fullFileName.LastIndexOf("\\") + 1);
        //限定上传文件的格式
        fileName = Session["s_id"].ToString() + '_' + Session["file_no"] + ".csv";
        string type = fullFileName.Substring(fullFileName.LastIndexOf(".") + 1);
        if (type == "csv" )
        {
            //将文件保存在服务器中根目录下的files文件夹中
            string saveFileName = Server.MapPath("./" + Session["s_id"].ToString()) + "/file\\" + fileName;
            UpLoad.PostedFile.SaveAs(saveFileName);
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('文件上传成功！将返回登录页。');</script>");
            Response.Redirect("index.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('请选择正确的格式');</script>");
        }
    }
}