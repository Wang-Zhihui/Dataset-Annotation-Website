using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Web.Configuration;
using System.IO;



public partial class tutor : System.Web.UI.Page
{
    static int tutor_1 = 0;
    static int tutor_2 = 0;
    static int tutor_3 = 0;
    static int tutor_4 = 0;
    static int tutor_5 = 0;
    string file_no_result = "";

    public static int gettutor_1()
    {
        return tutor_1;
    }
    public static int gettutor_2()
    {
        return tutor_2;
    }
    public static int gettutor_3()
    {
        return tutor_3;
    }
    public static int gettutor_4()
    {
        return tutor_4;
    }
    public static int gettutor_5()
    {
        return tutor_5;
    }
 


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["s_id"] == null)
            {
                Response.Redirect("index.aspx");
            }
            //TextBox1.Text = "xxxxxxxxxx";
            bool login_check = false;
            MySqlConnection conn = CreateConn();
            string sqlQuery = "SELECT * FROM tutor_user";
            MySqlCommand comm = new MySqlCommand(sqlQuery, conn);
            conn.Open();
            MySqlDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                if (dr.HasRows && Session["s_id"] != null)
                {
                    if (dr.GetString(0) == Session["s_id"].ToString())
                    {
                        tutor_1 = dr.GetInt32(1);
                        tutor_2 = dr.GetInt32(2);
                        tutor_3 = dr.GetInt32(3);
                        tutor_4 = dr.GetInt32(4);
                        tutor_5 = dr.GetInt32(5);
                        login_check = true;
                    }
                }
            }
            
            conn.Close();
            if (login_check == false)
            {
                Response.Redirect("index.aspx");
            }

            string path = Server.MapPath("./" + Session["s_id"] + "/file");
            DirectoryInfo di = new DirectoryInfo(path);
            //找到该目录下的文件 
            FileInfo[] fis = di.GetFiles();
            Session["file_no"] = null;
            foreach (FileInfo fi in fis)
            {
                string filename = fi.Name;
                string file_no = filename.Split('.')[0];
                file_no = file_no.Split('_')[1];
                file_no_result += file_no + ',';
                
            }
	    Session.Timeout = 60;
            Session["file_no"] = file_no_result;
            //Response.Write("<script>alert('" + tutor_1.ToString() + "')</script>");
        }
            
    }

    public static MySqlConnection CreateConn()
        {
            string _conn = WebConfigurationManager.ConnectionStrings["SqlConnStr"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(_conn);
            return conn;
        }

    protected void Button5_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = CreateConn();

        string sqlQuery = "update tutor_user set tutor_5 = " + Button_tutor_5.Value + " where user = " + '"' + Session["s_id"].ToString() + '"';
        //TextBox1.Text = sqlQuery;
        MySqlCommand comm = new MySqlCommand(sqlQuery, conn);
        conn.Open();
        comm.ExecuteNonQuery();		//执行SQL语句    
        MySqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows && Session["s_id"] != null)
            {
                if (dr.GetString(0) == Session["s_id"].ToString())
                {
                    tutor_1 = dr.GetInt32(1);
                    tutor_2 = dr.GetInt32(2);
                    tutor_3 = dr.GetInt32(3);
                    tutor_4 = dr.GetInt32(4);
                    tutor_5 = dr.GetInt32(5);
                }
            }
        }
        conn.Close();
        Response.Redirect("label.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = CreateConn();
        
        string sqlQuery = "update tutor_user set tutor_1 = " + Button_tutor_1.Value + " where user = " + '"' + Session["s_id"].ToString() + '"' ;
        //TextBox1.Text = sqlQuery;
        MySqlCommand comm = new MySqlCommand(sqlQuery, conn);
        conn.Open();
        comm.ExecuteNonQuery();		//执行SQL语句    
        MySqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows && Session["s_id"] != null)
            {
                if (dr.GetString(0) == Session["s_id"].ToString())
                {
                    tutor_1 = dr.GetInt32(1);
                    tutor_2 = dr.GetInt32(2);
                    tutor_3 = dr.GetInt32(3);
                    tutor_4 = dr.GetInt32(4);
                    tutor_5 = dr.GetInt32(5);
                }
            }
        }
        conn.Close();
        Response.Redirect("tutor.aspx");
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = CreateConn();

        string sqlQuery = "update tutor_user set tutor_2 = " + Button_tutor_2.Value + " where user = " + '"' + Session["s_id"].ToString() + '"';
        //TextBox1.Text = sqlQuery;
        MySqlCommand comm = new MySqlCommand(sqlQuery, conn);
        conn.Open();
        comm.ExecuteNonQuery();		//执行SQL语句    
        MySqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows && Session["s_id"] != null)
            {
                if (dr.GetString(0) == Session["s_id"].ToString())
                {
                    tutor_1 = dr.GetInt32(1);
                    tutor_2 = dr.GetInt32(2);
                    tutor_3 = dr.GetInt32(3);
                    tutor_4 = dr.GetInt32(4);
                    tutor_5 = dr.GetInt32(5);
                }
            }
        }
        conn.Close();
        Response.Redirect("tutor.aspx");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = CreateConn();

        string sqlQuery = "update tutor_user set tutor_3 = " + Button_tutor_3.Value + " where user = " + '"' + Session["s_id"].ToString() + '"';
        //TextBox1.Text = sqlQuery;
        MySqlCommand comm = new MySqlCommand(sqlQuery, conn);
        conn.Open();
        comm.ExecuteNonQuery();		//执行SQL语句    
        MySqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows && Session["s_id"] != null)
            {
                if (dr.GetString(0) == Session["s_id"].ToString())
                {
                    tutor_1 = dr.GetInt32(1);
                    tutor_2 = dr.GetInt32(2);
                    tutor_3 = dr.GetInt32(3);
                    tutor_4 = dr.GetInt32(4);
                    tutor_5 = dr.GetInt32(5);
                }
            }
        }
        conn.Close();
        Response.Redirect("tutor.aspx");

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = CreateConn();

        string sqlQuery = "update tutor_user set tutor_4 = " + Button_tutor_4.Value + " where user = " + '"' + Session["s_id"].ToString() + '"';
        //TextBox1.Text = sqlQuery;
        MySqlCommand comm = new MySqlCommand(sqlQuery, conn);
        conn.Open();
        comm.ExecuteNonQuery();		//执行SQL语句    
        MySqlDataReader dr = comm.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows && Session["s_id"] != null)
            {
                if (dr.GetString(0) == Session["s_id"].ToString())
                {
                    tutor_1 = dr.GetInt32(1);
                    tutor_2 = dr.GetInt32(2);
                    tutor_3 = dr.GetInt32(3);
                    tutor_4 = dr.GetInt32(4);
                    tutor_5 = dr.GetInt32(5);
                }
            }
        }
        conn.Close();
        Response.Redirect("tutor.aspx");

    }
   
    // HiddenField1.Value
}
