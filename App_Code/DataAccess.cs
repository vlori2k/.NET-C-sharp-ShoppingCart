using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;


/// <summary>
/// We create a class "DataAccess" which is STATIC! This so we cant allow this class to be manipulated.
/// Inside the class we create a static string "myConnectionString" and gives this the name "myConnection"
/// </summary>
public static class DataAccess
{
    /// <summary>
    /// IMPORTANT: To make the DB work: Go to Server Explorer--> Rightclick on your DB"myConnection" -->
    /// Click "Properties" --> click on Connection string label and set it to the path of where your DB is located.
    /// 
    /// In my case primary path is: C:\Users\Vlori\Documents\WebSite\ShoppingCart\App_Data\Database.mdf
    /// 
    /// My connection string label is: Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Vlori\Documents\WebSite\ShoppingCart\App_Data\Database.mdf;Integrated Security=True
    /// </summary>

    private static string myConnectionString; 
    static DataAccess()
    {
        myConnectionString = WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
    }

    /// <summary>
    /// Now we create a DataTable and gives it a variablename "dt". 
    /// Inside this we create a SqlConnection with a variable name "cnn" and sets this to be a new sqlConnection with 
    /// "myConnectionString" inside. This so we can connect to the DB "Database.mdf".
    /// </summary>
    public static DataTable  selectQuery(string query)
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