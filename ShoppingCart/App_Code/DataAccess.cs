using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
    private static string myConnectionString;

    public DataAccess()
    {
        myConnectionString = WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
    }

    public static DataTable selectQuery(string query)
    {
        DataTable dt = new DataTable();
        SqlConnection cnn = new SqlConnection(myConnectionString);
        cnn.Open();
        SqlCommand cmd = new SqlCommand(query, cnn);
        dt.Load(cmd.ExecuteReader());
        cnn.Close();
        return dt;
    }

}