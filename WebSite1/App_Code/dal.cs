using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for dal
/// </summary>
public class dal
{
    public dal()
    {

    }
    string con_string = "Data Source=.;Initial Catalog=roman;Integrated Security=True";
    public bool Executecomand(string comand, List<SqlParameter> parameter)
    {
        SqlConnection my_cn = new SqlConnection(con_string);
        SqlCommand com = new SqlCommand(comand, my_cn);
        foreach (SqlParameter param in parameter)
        {
            com.Parameters.Add(param);
        }
        try
        {


            my_cn.Open();
            com.ExecuteNonQuery();
            my_cn.Close();
            return true;
        }
        catch
        {
            return false;
        }

    }

    public DataTable get_dt(string comand)
    {
        SqlConnection my_cn = new SqlConnection(con_string);

        SqlCommand com = new SqlCommand(comand, my_cn);
        SqlDataAdapter ad = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        ad.Fill(dt);

        return dt;

    }

    public DataTable get_login(string comand, List<SqlParameter> parameter)
    {
        SqlConnection my_cn = new SqlConnection(con_string);
        SqlCommand com = new SqlCommand(comand, my_cn);
        foreach (SqlParameter param in parameter)
        {
            com.Parameters.Add(param);
        }
        SqlDataAdapter ad = new SqlDataAdapter(com);
        DataTable dt = new DataTable();

        try
        {



            ad.Fill(dt);
            my_cn.Close();
            return dt;
        }
        catch
        {
            return null;
        }

    }
}