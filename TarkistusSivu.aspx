
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageSingleMenu.Master" CodeFile="MalliSivu.aspx.cs" Inherits="MalliSivu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <link href="styles/tarkistussivu.css" rel="stylesheet" />
  <script src="scripts/fontawesome/all.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<telerik:RadPageLayout runat="server" ID="RadPageLayout2">
    <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn CssClass="jumbotron">
                      <div style="margin-left: auto; margin-right: auto; text-align: center;">
                            <asp:Label ID="Label3" runat="server" Text="Data Collection Plan   " Font-Bold="true" Font-Size="X-Large" CssClass="StrongText">
                            </asp:Label> </div>
                            <asp:ImageButton ID="btn1" runat="server" class="addMore" title="Mikä on prosessin nimi? Mitä asiaa mitataan? Missä muodossa data tulee (jatkuva vai erillinen)? Mikä on mittauksen toiminnallinen määritelmä? Missä, milloin ja miten paljon dataa kerätään? Kuka on vastuussa datan keräämisestä ja miten datankeruu toteutetaan?" CssClass="btnstyle1" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Blue_question_mark_icon.svg/2048px-Blue_question_mark_icon.svg.png" Width="20px" Height="20px"/>
                          <div class="row">
  <div class="column">
    <table>
      <tr>
        <th>Prosessin nimi</th>
        <th>Mitattava asia</th>
        <th>Datan tyyppi</th>
        <th>Toiminnallinen määritelmä</th>
        <th>Keskeiset tekijät (kenen toimesta, mitä, missä, milloin)</th>
        <th>Kuinka paljon tietoa kerätään</th>
        <th>Vastuuhenkilöt ja miten tieto kerätään</th>
        <th>Toiminnot</th>
      </tr>
      <tr>
        <td>Julkinen liikenne Oulun alueella</td>
        <td>Bussin nro. 18 matkustajamäärä</td>
        <td>Jatkuva</td>
        <td>Kuinka moni ihminen kulkee aamupäivän busseilla</td>
        <td>Aamun/aamupäivän bussivuorot</td>
        <td>Otetaan bussiin nousseiden matkustajien määrä pysäkeittäin ylös ja katsotaan, kuinka monelle lisävuorolle on tarvetta</td>
        <td>Bussikuski kirjaa ylös nousseiden matkustajien määrän</td>
        <td>Poista/muokkaa/siirry</td>
      </tr>
    </table>
  </div>
                        </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
        </telerik:RadPageLayout>
    </asp:Content>