//tallenna nappi: OnClick="tallenna_Click" meta:resourcekey="btnUusiKayttajaResource1" 

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MalliSivu : System.Web.UI.Page
{
    protected void Tallenna_Click(object sender, EventArgs e)
    {
        MalliSivuDAL DAL = new MalliSivuDAL();
        DAL.Paivita(Int32.Parse(projekti_id.Value), txtProjektinNimi.Text, txtOngelmanKuvaus.InnerText, txtLiikeToimintaAjatus.InnerText, txtTavoitteenMaarittely.InnerText);
        DAL.PaivitaHenkilo(Int32.Parse(projekti_id.Value + "1"), Tyonimike.Text, Nimi.Text, Ajankaytto.Text, Int32.Parse(projekti_id.Value));
        DAL.PaivitaHenkilo(Int32.Parse(projekti_id.Value + "2"), Tyonimike2.Text, Nimi2.Text, Ajankaytto2.Text, Int32.Parse(projekti_id.Value));
        DAL.PaivitaHenkilo(Int32.Parse(projekti_id.Value + "3"), Tyonimike3.Text, Nimi3.Text, Ajankaytto3.Text, Int32.Parse(projekti_id.Value));
        DAL.PaivitaHenkilo(Int32.Parse(projekti_id.Value + "4"), Tyonimike4.Text, Nimi4.Text, Ajankaytto4.Text, Int32.Parse(projekti_id.Value));
        DAL.PaivitaHenkilo(Int32.Parse(projekti_id.Value + "5"), Tyonimike5.Text, Nimi5.Text, Ajankaytto5.Text, Int32.Parse(projekti_id.Value));
        DAL.UpdateScope(Int32.Parse(projekti_id.Value), FirstStep.Text, LastStep.Text, InScope.Text, OutScope.Text);
        DAL.PaivitaAikataulu(Int32.Parse(projekti_id.Value), EstimatedD.SelectedDate, CompletedD.SelectedDate, EstimatedM.SelectedDate, CompletedM.SelectedDate, EstimatedA.SelectedDate,
        CompletedA.SelectedDate, EstimatedI.SelectedDate, CompletedI.SelectedDate, EstimatedC.SelectedDate, CompletedC.SelectedDate);
        // string ProjektinNimi, string OngelmanKuvaus, string LiikeToimintaSuunnitelma, string TavoitteenMaarittely, DateTime AikaTaulu, string Scope, string Henkilosto
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
 }

         /*
           public DataTable Hae()
   {

         //Haetaan tiedot tietokannasta:
         DataTable projektinluonti = DAL.Hae();
         projektinluonti.Columns.Add("PROJEKTINNIMI", typeof(char)).DefaultValue = 0;

         //Asetetaan primary key alempana käytettyjä find-komentoja varten:
         projektinluonti.PrimaryKey = new DataColumn[] { projektinluonti.Columns[0] };       //new DataColumn[] { data.Columns["ID"] };

         return projektinluonti;*/
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string testParameter = Request.QueryString["id"];
            int projekti_id = 1;           
            if  (!String.IsNullOrEmpty(testParameter)) 
            {
                projekti_id = (Int32.Parse(testParameter));
            }

            MalliSivuDAL DAL = new MalliSivuDAL();
            DataTable projektinluonti = DAL.Hae(projekti_id);
            txtProjektinNimi.Text = projektinluonti.Rows[0]["PROJEKTINNIMI"].ToString();
            txtOngelmanKuvaus.InnerText = projektinluonti.Rows[0]["ONGELMAN_KUVAUS"].ToString();
            txtLiikeToimintaAjatus.InnerText = projektinluonti.Rows[0]["LT_SUUNNITELMA"].ToString();
            txtTavoitteenMaarittely.InnerText = projektinluonti.Rows[0]["TAV_MAARITTELY"].ToString();

            DataTable henkilosto = DAL.HaeHenkilot(projekti_id);
            if  (henkilosto.Rows.Count > 0)
            {
                Tyonimike.Text = henkilosto.Rows[0]["TYONIMIKE"].ToString();
                Nimi.Text = henkilosto.Rows[0]["TYONTEKIJA"].ToString();
                Ajankaytto.Text = henkilosto.Rows[0]["PROSENTTI"].ToString();
            }
            if (henkilosto.Rows.Count > 1)
            {
                Tyonimike2.Text = henkilosto.Rows[1]["TYONIMIKE"].ToString();
                Nimi2.Text = henkilosto.Rows[1]["TYONTEKIJA"].ToString();
                Ajankaytto2.Text = henkilosto.Rows[1]["PROSENTTI"].ToString();
            }
            if (henkilosto.Rows.Count > 0)
            {
                Tyonimike.Text = henkilosto.Rows[0]["TYONIMIKE"].ToString();
                Nimi.Text = henkilosto.Rows[0]["TYONTEKIJA"].ToString();
                Ajankaytto.Text = henkilosto.Rows[0]["PROSENTTI"].ToString();
            }
            if (henkilosto.Rows.Count > 0)
            {
                Tyonimike.Text = henkilosto.Rows[0]["TYONIMIKE"].ToString();
                Nimi.Text = henkilosto.Rows[0]["TYONTEKIJA"].ToString();
                Ajankaytto.Text = henkilosto.Rows[0]["PROSENTTI"].ToString();
            }
            if (henkilosto.Rows.Count > 0)
            {
                Tyonimike.Text = henkilosto.Rows[0]["TYONIMIKE"].ToString();
                Nimi.Text = henkilosto.Rows[0]["TYONTEKIJA"].ToString();
                Ajankaytto.Text = henkilosto.Rows[0]["PROSENTTI"].ToString();
            }



            DataTable scope = DAL.GetScope(projekti_id);
            if (scope.Rows.Count > 0)
            {
                FirstStep.Text = scope.Rows[0]["FIRSTSTEP"].ToString();
                LastStep.Text = scope.Rows[0]["LASTSTEP"].ToString();
                InScope.Text = scope.Rows[0]["IN_SCOPE"].ToString();
                OutScope.Text = scope.Rows[0]["OUT_SCOPE"].ToString();
            }

            DataTable aikataulu = DAL.HaeAikataulu(projekti_id);
            if (!(aikataulu.Rows[0].IsNull("ESTIMATED_D")))
            EstimatedD.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["ESTIMATED_D"].ToString());
            if (!(aikataulu.Rows[0].IsNull("COMPLETED_D")))
                CompletedD.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["COMPLETED_D"].ToString());
            if (!(aikataulu.Rows[0].IsNull("ESTIMATED_M")))
                EstimatedM.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["ESTIMATED_M"].ToString());
            if (!(aikataulu.Rows[0].IsNull("COMPLETED_M")))
                CompletedM.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["COMPLETED_M"].ToString());
            if (!(aikataulu.Rows[0].IsNull("ESTIMATED_A")))
                EstimatedA.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["ESTIMATED_A"].ToString());
            if (!(aikataulu.Rows[0].IsNull("COMPLETED_M")))
                CompletedM.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["COMPLETED_M"].ToString());
            if (!(aikataulu.Rows[0].IsNull("ESTIMATED_I")))
                EstimatedI.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["ESTIMATED_I"].ToString());
            if (!(aikataulu.Rows[0].IsNull("COMPLETED_I")))
                CompletedI.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["COMPLETED_I"].ToString());
            if (!(aikataulu.Rows[0].IsNull("ESTIMATED_C")))
                EstimatedC.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["ESTIMATED_C"].ToString());
            if (!(aikataulu.Rows[0].IsNull("COMPLETED_C")))
                CompletedC.SelectedDate = DateTime.Parse(aikataulu.Rows[0]["COMPLETED_C"].ToString());
        }
        else
        {
            {
                // Is a post back
            }

        }
    }
}



