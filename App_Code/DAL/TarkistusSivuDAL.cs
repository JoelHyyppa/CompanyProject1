using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GridDAL
/// </summary>
public class TarkistusSivuDAL
{
  public TarkistusSivuDAL()
  {
    

  }

  Tietokanta db = new Tietokanta();


  public DataTable HaeProsessit()
  {

    string sSql = @"SELECT * FROM DATANKERUU
                    ORDER BY ID";

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

    public void PaivitaRivi(int id, string prosessin_nimi, string mitattava_asia, string datatyyppi, string toim_maaritelma,
        string kesk_tekijat, string kuinkapaljontietoakerataan, string vastuuhenkilot)
    {

        string sSql = @"UPDATE DATANKERUU
                    SET PROSESSIN_NIMI = @Prosessin_nimi,
                        MITATTAVA_ASIA = @Mitattava_asia,
                        DATATYYPPI = @Datatyyppi,
                        TOIM_MAARITELMA = @Toim_maaritelma,
                        KESK_TEKIJAT = @Kesk_tekijat,
                        KUINKAPALJONTIETOAKERATAAN = @Kuinkapaljontietoakerataan,
                        VASTUUHENKILOT = @Vastuuhenkilot
                    WHERE ID = @id";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@Prosessin_nimi", prosessin_nimi);
        sqlcom.Parameters.AddWithValue("@Mitattava_asia", mitattava_asia);
        sqlcom.Parameters.AddWithValue("@Datatyyppi", datatyyppi);
        sqlcom.Parameters.AddWithValue("@Toim_maaritelma", toim_maaritelma);
        sqlcom.Parameters.AddWithValue("@Kesk_tekijat", kesk_tekijat);
        sqlcom.Parameters.AddWithValue("@Kuinkapaljontietoakerataan", kuinkapaljontietoakerataan);
        sqlcom.Parameters.AddWithValue("@Vastuuhenkilot", vastuuhenkilot);

        db.ExecuteSQL(sqlcom);
    }

    public void PoistaRivi(int id)
    {
        string sSql = @"DELETE FROM DATANKERUU
                    WHERE ID = id";
        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@id", id);

        db.ExecuteSQL(sqlcom);
    }
  
    public void LisaaRivi(int id, string prosessin_nimi, string mitattava_asia, string datatyyppi, string toim_maaritelma,
        string kesk_tekijat, string kuinkapaljontietoakerataan, string vastuuhenkilot)
    {

        string sSql = @"INSERT INTO DATANKERUU
                    VALUES( @Prosessin_nimi,
                         @Mitattava_asia,
                         @Datatyyppi,
                         @Toim_maaritelma,
                         @Kesk_tekijat,
                         @Kuinkapaljontietoakerataan,
                         @Vastuuhenkilot) ";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@Prosessin_nimi", prosessin_nimi);
        sqlcom.Parameters.AddWithValue("@Mitattava_asia", mitattava_asia);
        sqlcom.Parameters.AddWithValue("@Datatyyppi", datatyyppi);
        sqlcom.Parameters.AddWithValue("@Toim_maaritelma", toim_maaritelma);
        sqlcom.Parameters.AddWithValue("@Kesk_tekijat", kesk_tekijat);
        sqlcom.Parameters.AddWithValue("@Kuinkapaljontietoakerataan", kuinkapaljontietoakerataan);
        sqlcom.Parameters.AddWithValue("@Vastuuhenkilot", vastuuhenkilot);

        db.ExecuteSQL(sqlcom);
    }

}