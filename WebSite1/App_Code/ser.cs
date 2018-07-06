using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ser
/// </summary>
public class ser
{
    public string Subject1 { get; set; }
    public string Subject2 { get; set; }
    public int Rid { get; set; }
    public string Url { get; set; }
    public string Name { get; set; }

    public string Uname { get; set; }
      public string Password { get; set; }
    public int Uid { get; set; }
    public int Pid { get; set; }
    public string Comand { get; set; }
    public bool Rank { get; set; }
    public string Title { get; set; }
    public string Zhaner { get; set; }
	public ser()
	{
		
	}
    public bool Post_user()
    {
        string comand = "insert into [tbl_post] (title,subject,subject2,user_id,roman_id,roman_zhaner,url) values(@title,@subject,@subject2,@user_id,@roman_id,@roman_zhaner,@url)";
        List<SqlParameter> parametrlist = new List<SqlParameter>();
        var title_parametr = new SqlParameter("@title", this.Title);
        var sub1_parametr = new SqlParameter("@subject", this.Subject1);
        var sub2_parametr = new SqlParameter("@subject2", this.Subject2);
        var uid_parametr = new SqlParameter("@user_id", this.Uid);
        var rid_parametr = new SqlParameter("@roman_id", this.Rid);
        var zh_parametr = new SqlParameter("@roman_zhaner", this.Zhaner);
        var url_parametr = new SqlParameter("@url", this.Url);

        parametrlist.Add(title_parametr);
        parametrlist.Add(sub1_parametr);
        parametrlist.Add(sub2_parametr);
        parametrlist.Add(uid_parametr);
        parametrlist.Add(rid_parametr);
        parametrlist.Add(zh_parametr);
        parametrlist.Add(url_parametr);


        var db = new dal();
        var result = db.Executecomand(comand, parametrlist);
        return result;
    }
    public bool Regester_user()
    {
        string comand = "insert into [tbl_users] (name,user_name,password,user_rank)values(@name,@user_name,@password,'False')";
        List<SqlParameter> parametrlist = new List<SqlParameter>();
        var name_parametr = new SqlParameter("@name", this.Name);
        var user_parametr = new SqlParameter("@user_name", this.Uname);
        var pass_parametr = new SqlParameter("@password", this.Password);
      

        parametrlist.Add(name_parametr);
        parametrlist.Add(user_parametr);
        parametrlist.Add(pass_parametr);
     

        var db = new dal();
        var result = db.Executecomand(comand, parametrlist);
        return result;
    }
    public bool Insert_roman()
    {
        string comand = "insert into [tbl_noveljenre] (title,zhaner)values(@title,@zhaner)";
        List<SqlParameter> parametrlist = new List<SqlParameter>();
        var title_parametr = new SqlParameter("@title", this.Title);
        var zh_parametr = new SqlParameter("@zhaner", this.Zhaner);

        parametrlist.Add(title_parametr);
        parametrlist.Add(zh_parametr);
  
        var db = new dal();
        var result = db.Executecomand(comand, parametrlist);
        return result;
    }
    public bool ok_ersal()
    {
        string comand = "update tbl_users set user_rank=@user_rank where uid=@uid";
        List<SqlParameter> parametrlist = new List<SqlParameter>();
        var rank_parametr = new SqlParameter("@user_rank", this.Rank);
        var uid_parametr = new SqlParameter("@uid", this.Uid);

        parametrlist.Add(rank_parametr);
        parametrlist.Add(uid_parametr);

        var db = new dal();
        var result = db.Executecomand(comand, parametrlist);
        return result;
    }
    public DataTable get_zshanerid()
    {
        string comand = "select zhaner from tbl_noveljenre where id='" + Uid + "'";





        var db = new dal();
        var result = db.get_dt(comand);
        return result;
    }
    public DataTable get_uid()
    {
        string comand = "select uid from tbl_users where user_name='" + Uname + "'  ";





        var db = new dal();
        var result = db.get_dt(comand);
        return result;
    }
        public DataTable get_comand()
    {
        string comand = " select * from tbl_comment where user_id='" + Uid + "'";





        var db = new dal();
        var result = db.get_dt(comand);
        return result;
    }
   
    public bool Insert_comand()
    {
        string comand = "insert into [tbl_comment] (user_id,post_id,comment)values(@user_id,@post_id,@comment)";
        List<SqlParameter> parametrlist = new List<SqlParameter>();
        var uid_parametr = new SqlParameter("@user_id", this.Uid);
        var pid_parametr = new SqlParameter("@post_id", this.Pid);
        var comand_parametr = new SqlParameter("@comment", this.Comand);
        parametrlist.Add(uid_parametr);
        parametrlist.Add(pid_parametr);
        parametrlist.Add(comand_parametr);
        var db = new dal();
        var result = db.Executecomand(comand, parametrlist);
        return result;
    }
    public DataTable row_nazar()
    {
        string comand = "select name from tbl_users where uid='" + Uid + "'";





        var db = new dal();
        var result = db.get_dt(comand);
        return result;
    }

    public DataTable login()
    {
        string comand = "select * from tbl_users where user_name='" +Uname + "' and password='" + Password + "'";





        var db = new dal();
        var result = db.get_dt(comand);
        return result;
    }
}