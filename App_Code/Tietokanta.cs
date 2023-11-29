using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
//Tietokanta yhteyksien hallintaan apuluokka.
/// </summary>
public class Tietokanta
{
  string conStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

  public DataTable GetTable(SqlCommand cmd)
  {
    DataTable dt = new DataTable();
    SqlConnection con = new SqlConnection(conStr);
    cmd.Connection = con;
    SqlDataAdapter da = new SqlDataAdapter(cmd);


    try
    {
      cmd.Connection.Open();
      da.Fill(dt);
    }

    catch (SqlException ex)
    {
      throw ex;
    }
    catch (Exception ex)
    {
      throw ex;
    }
    finally
    {
      con.Close();
      con.Dispose();
      da.Dispose();
    }
    return dt;
  }

  public void ExecuteSQL(SqlCommand cmd)
  {
    SqlConnection con = new SqlConnection(conStr);
    cmd.Connection = con;
    SqlDataAdapter da = new SqlDataAdapter(cmd);

    try
    {
      cmd.Connection.Open();
      cmd.ExecuteNonQuery();
    }

    catch (SqlException ex)
    {
      throw ex;
    }
    catch (Exception ex)
    {
      throw ex;
    }
    finally
    {
      con.Close();
      con.Dispose();
      da.Dispose();
    }
  }

}