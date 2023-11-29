<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageSingleMenu.Master" CodeFile="MalliSivu.aspx.cs" Inherits="MalliSivu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <link href="styles/mallisivu.css" rel="stylesheet" />
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
  <script src="scripts/fontawesome/all.js" type="text/javascript"></script>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:HiddenField runat="server" Value="1" ID="projekti_id"/>
<telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn CssClass="jumbotron">

            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <div style="margin-left: auto; margin-right: auto; text-align: center;">
                            <asp:Label ID="Label3" runat="server" Text="Projektin nimi   " Font-Bold="true" Font-Size="X-Large" CssClass="StrongText">
                            </asp:Label>  </div>

                        <div style="margin-left: auto; margin-right: auto; text-align: center;">
                            <asp:textbox runat="server" id="txtProjektinNimi" Width="390px" Height="30px" Font-Size="16px"/>
                                </div>
                        
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
                        
                        <div><h3 style="text-align:center">Ongelman kuvaus <asp:ImageButton ID="ImageButton3" runat="server" class="addMore" title="Missä on ongelma? Milloin ja miten ongelmat ilmenevät? Mikä on ongelman vaikutus työntekijöihin ja yrityksen varallisuuteen?" CssClass="btnstyle1" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Blue_question_mark_icon.svg/2048px-Blue_question_mark_icon.svg.png" Width="20px" Height="20px"/>
                           
                           </h3></div>
<textarea name="textarea" id="txtOngelmanKuvaus" runat="server" placeholder="Missä on ongelma? Milloin ja miten ongelmat ilmenevät?" style="width:900px;height:300px;font-size:20px;"></textarea>  
                         <h3 style="text-align:center">Liiketoiminta-ajatus  <asp:ImageButton ID="ImageButton1" runat="server" class="addMore" title="Miksi tämä projekti on kannattavaa tehdä ja miksi se kannattaa tehdä nyt? Mitä seurauksia on sillä, että projekti jätetään tekemättä?" CssClass="btnstyle1" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Blue_question_mark_icon.svg/2048px-Blue_question_mark_icon.svg.png" Width="20px" Height="20px"/>  </h3>
                        
<textarea name="textarea"  id="txtLiikeToimintaAjatus" runat="server" placeholder="Miksi tämä projekti on kannattavaa tehdä ja miksi se kannattaa tehdä nyt?" style="width:900px;height:300px;font-size:20px;"></textarea>                        
                            
                                
                       
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn HiddenMd="true" HiddenSm="true" HiddenXs="true">
                       <h3 style="text-align:center">Tavoitteen määrittely  <asp:ImageButton ID="ImageButton75" runat="server" class="addMore" title="Esim. Tavoitteena on lisätä/vähentää asiaa X tietyn verran päivämäärään X mennessä." CssClass="btnstyle1" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Blue_question_mark_icon.svg/2048px-Blue_question_mark_icon.svg.png" Width="20px" Height="20px"/></h3>  

                        <textarea name="textarea" id="txtTavoitteenMaarittely" runat="server" placeholder="Esim. Tavoitteena on lisätä/vähentää asiaa X tietyn verran päivämäärään X mennessä." style="width:900px;height:300px;font-size:20px;"></textarea>
                           <div style="border:black; border-width:8px; border-style:outset;">
                           <h2 style="text-align:center">Vaiheiden aikataulu</h2>


<div class="container text-center">
<div class="row">
    <div class="col-3">
      <strong>Vaihe</strong>
    </div>
    <div class="col-3">
    <strong>Suunniteltu aikataulu</strong> </div>
    <div class="col-3">
<strong>Valmistumispäivämäärä</strong></div>
  </div>
    </div>
                        <div class="form-group">
                                                        <div style="text-align: center;">
                        <div class="container text-center">
                            <div class="row">                           

    <div class="col-3">
      Määrittely
    </div>
    <div class="col-3">
<telerik:RadDatePicker ID="EstimatedD" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>   </div>
    <div class="col-3">
<telerik:RadDatePicker ID="CompletedD" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>    </div>
  </div>
    <div class="row">                           

    <div class="col-3">
      Mittaus
    </div>
    <div class="col-3">
<telerik:RadDatePicker ID="EstimatedM" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>    </div>
    <div class="col-3">
<telerik:RadDatePicker ID="CompletedM" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>   </div>
  </div>
  <div class="row">
    <div class="col-3">
      Analysointi
    </div>
       <div class="col-3">
<telerik:RadDatePicker ID="EstimatedA" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>    </div>
    <div class="col-3">
<telerik:RadDatePicker ID="CompletedA" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>    </div>
  </div>
         <div class="row">
    <div class="col-3">
      Parannus
    </div>
      <div class="col-3">
<telerik:RadDatePicker ID="EstimatedI" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>    </div>
    <div class="col-3">
<telerik:RadDatePicker ID="CompletedI" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>    </div>
  </div>                                                                                           
  <div class="row">
    <div class="col-3">
      Kontrolli
    </div>
      <div class="col-3">
<telerik:RadDatePicker ID="EstimatedC" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>    </div>
    <div class="col-3">
<telerik:RadDatePicker ID="CompletedC" runat="server" Culture="fi-FI">
<Calendar runat="server" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
</Calendar>
<DateInput runat="server" DateFormat="d.M.yyyy" DisplayDateFormat="d.M.yyyy" LabelWidth="64px" Width="">
<EmptyMessageStyle Resize="None" />
<ReadOnlyStyle Resize="None" />
<FocusedStyle Resize="None" />
<DisabledStyle Resize="None" />
<InvalidStyle Resize="None" />
<HoveredStyle Resize="None" />
<EnabledStyle Resize="None" />
</DateInput>
</telerik:RadDatePicker>    </div>
  </div>
      </div>
  </div>
                            
                        <div class="form-group">
                        <h2 style="text-align: center;">Scope(In/Out) </h2>

                               <div class="container text-center">
                            <div class="row">                           

    <div class="col-2">
      Ensimmäinen vaihe
    </div>
    <div class="col-9">
 <asp:Textbox name="name" runat="server" ID="FirstStep"  type="text" class="form-control" value="" size="25"/>    </div>
                                   </div>
    
                                    <div class="row">                           

    <div class="col-2">
      Viimeinen vaihe
    </div>
    <div class="col-9">
<asp:Textbox name="name" runat="server" ID="LastStep"  type="text" class="form-control" value="" size="25"/>    </div>
  </div>
                                   </div>

                            <label for="exampleInputEmail1">&nbsp;</label><div id="message14"> </div>                           

                        <div class="container text-center">
                            <div class="row">                           

    <div class="col-2">
      In Scope
    </div>
    <div class="col-9">
<asp:Textbox name="name" runat="server" ID="InScope" type="text" class="form-control" value="" size="25" rows="2"/>    </div>
                                   </div>
    
                                    <div class="row">                           

    <div class="col-2">
      Out of Scope
    </div>
    <div class="col-9">
<asp:Textbox name="name" runat="server" ID="OutScope" type="text" class="form-control" value="" size="25" rows="2"/>    </div>
  </div>
                                   </div>                   

                        <h2 style="text-align:center">Henkilöstö</h2>
                        <div class="container text-center">
<div class="row">
    <div class="col-5">
      <strong>Työnimike</strong>
    </div>
    <div class="col-4">
    <strong>Nimi</strong>    
    </div>
    <div class="col-2">
<strong>Ajankäyttö</strong>   </div>
  </div>
    <div class="row">
    <div class="col-5">
      <asp:Textbox name="name" runat="server" ID="Tyonimike"  type="text" class="form-control" value="" placeholder="Laadunvalvoja"  size="25"/>    </div>
    <div class="col-4">
<asp:Textbox name="name" runat="server" ID="Nimi" type="text" class="form-control" value="" placeholder="Uuno Turhapuro"  size="25"/>    </div>
    <div class="col-2">
<asp:Textbox name="name" runat="server" ID="Ajankaytto" type="text" class="form-control" value="" placeholder="20" size="25"/>    </div>
  </div>
                            <div class="row">
    <div class="col-5">
      <asp:Textbox name="name" runat="server" ID="Tyonimike2"  type="text" class="form-control" value=""   size="25"/>    </div>
    <div class="col-4">
<asp:Textbox name="name" runat="server" ID="Nimi2" type="text" class="form-control" value=""  size="25"/>    </div>
    <div class="col-2">
<asp:Textbox name="name" runat="server" ID="Ajankaytto2" type="text" class="form-control" value=""  size="25"/>    </div>
  </div>
                            <div class="row">
    <div class="col-5">
      <asp:Textbox name="name" runat="server" ID="Tyonimike3"  type="text" class="form-control" value=""   size="25"/>    </div>
    <div class="col-4">
<asp:Textbox name="name" runat="server" ID="Nimi3" type="text" class="form-control" value=""   size="25"/>    </div>
    <div class="col-2">
<asp:Textbox name="name" runat="server" ID="Ajankaytto3" type="text" class="form-control" value=""  size="25"/>    </div>
  </div>
                            <div class="row">
    <div class="col-5">
      <asp:Textbox name="name" runat="server" ID="Tyonimike4"  type="text" class="form-control" value=""   size="25"/>    </div>
    <div class="col-4">
      <asp:Textbox name="name" runat="server" ID="Nimi4"  type="text" class="form-control" value=""  size="25"/>    </div>
    <div class="col-2">
      <asp:Textbox name="name" runat="server" ID="Ajankaytto4"  type="text" class="form-control" value=""   size="25"/>    </div>
  </div>
                            <div class="row">
    <div class="col-5">
      <asp:Textbox name="name" runat="server" ID="Tyonimike5"  type="text" class="form-control" value=""   size="25"/>    </div>
    <div class="col-4">
      <asp:Textbox name="name" runat="server" ID="Nimi5"  type="text" class="form-control" value=""   size="25"/>    </div>
    <div class="col-2">
      <asp:Textbox name="name" runat="server" ID="Ajankaytto5"  type="text" class="form-control" value=""   size="25"/>    </div>
  </div>
    </div>
                            <div style="text-align: right";>
                            <asp:ImageButton ID="btn1" runat="server" class="addMore" title="Tallenna" OnClick="Tallenna_Click" CssClass="btnstyle1" ImageUrl="https://icons.iconarchive.com/icons/custom-icon-design/flatastic-9/512/Accept-icon.png" Width="28px" Height="28px"/>
                    <asp:ImageButton ID="Button1" runat="server" class="addMore" title="Peruuta" CssClass="btnstyle2" PostBackUrl="http://localhost:53372/" ImageUrl="https://cdn-icons-png.flaticon.com/512/6056/6056831.png" Width="28px" Height="28px"/>
                       </div>  </div>    
                           </div>
                               </div>

                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>

                   </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
</asp:Content>