using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GridDAL
/// </summary>
public class MalliSivuDAL
{
  public MalliSivuDAL()
  {
    
  }

  Tietokanta db = new Tietokanta();

  public DataTable Hae(int id)
  {

    string sSql = @"SELECT * FROM PROJEKTINLUONTI WHERE ID = @id
                    ORDER BY ID";

    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;
    sqlcom.Parameters.AddWithValue("@id", id);

        return db.GetTable(sqlcom);
  }

    public DataTable HaeKaikki()
    {

        string sSql = @"SELECT * FROM PROJEKTINLUONTI
                    ORDER BY ID";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;

        return db.GetTable(sqlcom);
    }

    public DataTable HaeHenkilot(int id)
    {

        string sSql = @"SELECT * FROM HENKILOSTO WHERE PROJEKTI_ID = @id
                    ORDER BY ID";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@id", id);

        return db.GetTable(sqlcom);
    }

    public DataTable GetScope(int id)
    {

        string sSql = @"SELECT * FROM SCOPE WHERE PROJEKTI_ID = @id
                    ORDER BY ID";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@id", id);

        return db.GetTable(sqlcom);
    }

    public DataTable HaeAikataulu(int id)
    {

        string sSql = @"SELECT * FROM AIKATAULU WHERE PROJEKTI_ID = @id
                    ORDER BY ID";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@id", id);

        return db.GetTable(sqlcom);
    }

    public void Paivita(int id, string ProjektinNimi, string OngelmanKuvaus, string LiikeToimintaSuunnitelma, string TavoitteenMaarittely)
  {

        string sSql = @"UPDATE PROJEKTINLUONTI
                        SET
                        PROJEKTINNIMI = @ProjektinNimi,
                        ONGELMAN_KUVAUS = @OngelmanKuvaus,
                        LT_SUUNNITELMA = @LiikeToimintaSuunnitelma,
                        TAV_MAARITTELY = @TavoitteenMaarittely
                      
                        WHERE ID = @id";

    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;
    sqlcom.Parameters.AddWithValue("@id", id);
    sqlcom.Parameters.AddWithValue("@ProjektinNimi", ProjektinNimi);
    sqlcom.Parameters.AddWithValue("@OngelmanKuvaus", OngelmanKuvaus);
    sqlcom.Parameters.AddWithValue("@LiikeToimintaSuunnitelma", LiikeToimintaSuunnitelma);
    sqlcom.Parameters.AddWithValue("@TavoitteenMaarittely", TavoitteenMaarittely);


        db.ExecuteSQL(sqlcom);
  }
    
    public void Poista(int id)
  {
    string sSql = @"DELETE FROM PROJEKTINLUONTI
                    WHERE ID = id";
    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;
    sqlcom.Parameters.AddWithValue("@id", id);

    db.ExecuteSQL(sqlcom);
  }

    public void PaivitaHenkilo(int id, string Tyonimike, string Tyontekija, string Prosentti, int ProjektiId)
    {

        string sSql = @"UPDATE HENKILOSTO
                        SET
                        TYONIMIKE = @Tyonimike,
                        TYONTEKIJA = @Tyontekija,
                        PROSENTTI = @Prosentti,
                        PROJEKTI_ID = @ProjektiId
                        WHERE ID = @id";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@id", id);
        sqlcom.Parameters.AddWithValue("@Tyonimike", Tyonimike);
        sqlcom.Parameters.AddWithValue("@Tyontekija", Tyontekija);
        sqlcom.Parameters.AddWithValue("@Prosentti", Prosentti);
        sqlcom.Parameters.AddWithValue("@ProjektiId", ProjektiId);
        db.ExecuteSQL(sqlcom);
    }

    public void UpdateScope(int id, string FirstStep, string LastStep, string InScope, string OutScope)
    {

        string sSql = @"UPDATE SCOPE
                        SET
                        FIRSTSTEP = @FirstStep,
                        LASTSTEP = @LastStep,
                        IN_SCOPE = @InScope,
                        OUT_SCOPE = @OutScope
                        WHERE PROJEKTI_ID = @id";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@id", id);
        sqlcom.Parameters.AddWithValue("@FirstStep", FirstStep);
        sqlcom.Parameters.AddWithValue("@LastStep", LastStep);
        sqlcom.Parameters.AddWithValue("@InScope", InScope);
        sqlcom.Parameters.AddWithValue("@OutScope", OutScope);
        db.ExecuteSQL(sqlcom);
    }

    public void PaivitaAikataulu(int id, DateTime? EstimatedD, DateTime? CompletedD, DateTime? EstimatedM, DateTime? CompletedM,
        DateTime? EstimatedA, DateTime? CompletedA, DateTime? EstimatedI, DateTime? CompletedI, DateTime? EstimatedC, DateTime? CompletedC)
    {

        string sSql = @"UPDATE AIKATAULU
                        SET
                        ESTIMATED_D = @EstimatedD,
                        COMPLETED_D = @CompletedD,
                        ESTIMATED_M = @EstimatedM,
                        COMPLETED_M = @CompletedM,
                        ESTIMATED_A = @EstimatedA,
                        COMPLETED_A = @CompletedA,
                        ESTIMATED_I = @EstimatedI,
                        COMPLETED_I = @CompletedI,
                        ESTIMATED_C = @EstimatedC,
                        COMPLETED_C = @CompletedC
                        
                        WHERE PROJEKTI_ID = @id";

        SqlCommand sqlcom = new SqlCommand();
        sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@id", id);
        if ( EstimatedD != null)
        sqlcom.Parameters.AddWithValue("@EstimatedD", EstimatedD);
        else
        sqlcom.Parameters.AddWithValue("@EstimatedD", DBNull.Value);
        if (CompletedD != null)
        sqlcom.Parameters.AddWithValue("@CompletedD", CompletedD);
        else
        sqlcom.Parameters.AddWithValue("@CompletedD", DBNull.Value);
        if (EstimatedM != null)
        sqlcom.Parameters.AddWithValue("@EstimatedM", EstimatedM);
        else
        sqlcom.Parameters.AddWithValue("@EstimatedM", DBNull.Value);
        if (CompletedM != null)
        sqlcom.Parameters.AddWithValue("@CompletedM", CompletedM);
        else
        sqlcom.Parameters.AddWithValue("@CompletedM", DBNull.Value);
        if (EstimatedA != null)
        sqlcom.Parameters.AddWithValue("@EstimatedA", EstimatedA);
        else
        sqlcom.Parameters.AddWithValue("@EstimatedA", DBNull.Value);
        if (CompletedA != null)
        sqlcom.Parameters.AddWithValue("@CompletedA", CompletedA);
        else
        sqlcom.Parameters.AddWithValue("@CompletedA", DBNull.Value);
        if (EstimatedI!= null)
        sqlcom.Parameters.AddWithValue("@EstimatedI", EstimatedI);
        else
            sqlcom.Parameters.AddWithValue("@EstimatedI", DBNull.Value);
        if (CompletedI != null)
            sqlcom.Parameters.AddWithValue("@CompletedI", CompletedI);
        else
            sqlcom.Parameters.AddWithValue("@CompletedI", DBNull.Value);
        if (EstimatedC != null)
            sqlcom.Parameters.AddWithValue("@EstimatedC", EstimatedC);
        else
            sqlcom.Parameters.AddWithValue("@EstimatedC", DBNull.Value);
        if (CompletedC != null)
            sqlcom.Parameters.AddWithValue("@CompletedC", CompletedC);
        else
            sqlcom.Parameters.AddWithValue("@CompletedC", DBNull.Value);
        db.ExecuteSQL(sqlcom);
    }
    public void LisaaProjekti(string ProjektinNimi, string OngelmanKuvaus, string LiikeToimintaSuunnitelma, string TavoitteenMaarittely)
      
    {

    string sSql = @"INSERT INTO PROJEKTINLUONTI
                    VALUES( @ProjektinNimi,
                        @OngelmanKuvaus,
                        @LiikeToimintaSuunnitelma,
                        @TavoitteenMaarittely)";

    SqlCommand sqlcom = new SqlCommand();
    sqlcom.CommandText = sSql;
        sqlcom.Parameters.AddWithValue("@ProjektinNimi", ProjektinNimi);
        sqlcom.Parameters.AddWithValue("@OngelmanKuvaus", OngelmanKuvaus);
        sqlcom.Parameters.AddWithValue("@LiikeToimintaSuunnitelma", LiikeToimintaSuunnitelma);
        sqlcom.Parameters.AddWithValue("@TavoitteenMaarittely", TavoitteenMaarittely);
        db.ExecuteSQL(sqlcom);
  }

} 