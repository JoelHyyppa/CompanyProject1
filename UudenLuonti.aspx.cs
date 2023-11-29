//tallenna nappi: OnClick="tallenna_Click" meta:resourcekey="btnUusiKayttajaResource1" 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class UudenLuonti : System.Web.UI.Page
        {
            
                
         /*  public DataTable Hae
          {
              get
              {
                  DataTable data = Session["Data"] as DataTable;

                  if (data == null)
                  {
                      data = Hae();
                      Session["Data"] = data;
                  }

                  return data;
              }
          } 

          DAL.Paivita((int)row["ID"], row["PROJEKTINNIMI"].ToString(), row["ONGELMAN_KUVAUS"].ToString(), row["LT_SUUNNITELMA"].ToString(), row["TAV_MAARITTELY"].ToString(), row["AIKATAULU"].ToDateTime(),
 row["SCOPE"].ToString(), row["HENKILOSTO"].ToString());

         DAL.LisaaProjekti((int)row["ID"], row["PROJEKTINNIMI"].ToString(), row["ONGELMAN_KUVAUS"].ToString(), row["LT_SUUNNITELMA"].ToString(), row["TAV_MAARITTELY"].ToString(), row["AIKATAULU"].ToDateTime(),
 row["SCOPE"].ToString(), row["HENKILOSTO"].ToString());

 }

         /*
           public DataTable Hae()
   {

         //Haetaan tiedot tietokannasta:
         DataTable projektinluonti = DAL.Hae();
         projektinluonti.Columns.Add("PROJEKTINNIMI", typeof(char)).DefaultValue = 0;

         Lasketaan iät syntymäajan perusteella:
         foreach (DataRow rv in projektinluonti.Rows)
         {
           rv["IKA"] = DateTime.Now.Year - ((DateTime)rv["SYNTYMAAIKA"]).Year;
         }
         //Asetetaan primary key alempana käytettyjä find-komentoja varten:
         projektinluonti.PrimaryKey = new DataColumn[] { projektinluonti.Columns[0] };       //new DataColumn[] { data.Columns["ID"] };

         return projektinluonti;*/
    

    protected void Page_Load(object sender, EventArgs e)
            {

            }

        }
    

