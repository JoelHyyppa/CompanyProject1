using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GridDAL
/// </summary>
public class GridDAL
{
  public GridDAL()
  {
    

  }

  Tietokanta db = new Tietokanta();


  public DataTable HaeKaupungit()
  {

    string sSql = @"SELECT * FROM KAUPUNKI
                    ORDER BY KAUPUNKI_JARJESTYS";

    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;

    
    return db.GetTable(sqlcom);
  }

  public DataTable HaeHenkilot()
  {

    string sSql = @"SELECT H.*, K.KAUPUNKI_NIMI FROM HENKILO H
                    LEFT JOIN KAUPUNKI K ON (H.KAUPUNKI_ID = K.KAUPUNKI_ID)";

    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;


    return db.GetTable(sqlcom);
  }

  public void PaivitaHenkilo(int henkilo_id, string nimi, int arvio, DateTime syntymaaika, int kaupunki_id )
  {

    string sSql = @"UPDATE HENKILO
                    SET NIMI = @Nimi,
                        SYNTYMAAIKA = @Syntymaaika,
                        ARVIO = @Arvio,
                        KAUPUNKI_ID = @Kaupunki_id
                    WHERE HENKILO_ID = @Henkilo_id";

    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;
    sqlcom.Parameters.AddWithValue("@Nimi", nimi);
    sqlcom.Parameters.AddWithValue("@Arvio", arvio);
    sqlcom.Parameters.AddWithValue("@Syntymaaika", syntymaaika);
    sqlcom.Parameters.AddWithValue("@Kaupunki_id", kaupunki_id);
    sqlcom.Parameters.AddWithValue("@Henkilo_id", henkilo_id);

    db.ExecuteSQL(sqlcom);
  }

  public void PoistaHenkilo(int henkilo_id)
  {
    string sSql = @"DELETE FROM HENKILO
                    WHERE HENKILO_ID = @Henkilo_id";
    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;
    sqlcom.Parameters.AddWithValue("@Henkilo_id", henkilo_id);

    db.ExecuteSQL(sqlcom);
  }
  public void LisaaHenkilo(string nimi, int arvio, DateTime syntymaaika, int kaupunki_id)
  {

    string sSql = @"INSERT INTO HENKILO
                    VALUES( @Nimi,
                         @Syntymaaika,
                         @Arvio,
                         @Kaupunki_id) ";

    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;
    sqlcom.Parameters.AddWithValue("@Nimi", nimi);
    sqlcom.Parameters.AddWithValue("@Arvio", arvio);
    sqlcom.Parameters.AddWithValue("@Syntymaaika", syntymaaika);
    sqlcom.Parameters.AddWithValue("@Kaupunki_id", kaupunki_id);

    db.ExecuteSQL(sqlcom);
  }



}