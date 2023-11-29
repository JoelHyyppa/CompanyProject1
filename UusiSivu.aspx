<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeFile="UusiSivu.aspx.cs" Inherits="Grid" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="styles/grid.css" rel="stylesheet" />
  <script src="scripts/fontawesome/all.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <telerik:RadAjaxPanel ID="RadAjaxPanel1" ClientEvents-OnRequestStart="onRequestStart" runat="server" CssClass="grid_wrapper">
        <telerik:RadGrid ID="RadGrid1" runat="server" PageSize="10" PagerStyle-PageButtonCount="5"
            OnNeedDataSource="RadGrid1_NeedDataSource" OnItemCreated="RadGrid1_ItemCreated" OnItemDataBound="RadGrid1_ItemDataBound"
            OnUpdateCommand="RadGrid1_UpdateCommand" OnInsertCommand="RadGrid1_InsertCommand" OnDeleteCommand="RadGrid1_DeleteCommand"
            AllowPaging="True" AllowSorting="false" RenderMode="Auto">
            <GroupingSettings ShowUnGroupButton="true" />
            <ExportSettings ExportOnlyData="true" IgnorePaging="true"></ExportSettings>
            <MasterTableView AutoGenerateColumns="False"
                AllowFilteringByColumn="false" TableLayout="Fixed"
                DataKeyNames="ID" CommandItemDisplay="Top"
                InsertItemPageIndexAction="ShowItemOnFirstPage">

                <Columns>
                    <telerik:GridBoundColumn DataField="PROSESSIN_NIMI" HeaderText="Prosessin nimi" SortExpression="PROSESSIN_NIMI"
                        UniqueName="Name"> 
                        <HeaderStyle Width="50px"/>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="MITATTAVA_ASIA" HeaderText="Mitattava asia" SortExpression="MITATTAVA_ASIA"
                        UniqueName="MitattavaAsia">
                        <HeaderStyle Width="50px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="DATATYYPPI" HeaderText="Datan tyyppi" SortExpression="DATATYYPPI"
                        UniqueName="DataTyyppi">
                        <HeaderStyle Width="50px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="TOIM_MAARITELMA" HeaderText="Toiminnallinen määritelmä" SortExpression="TOIM_MAARITELMA"
                        UniqueName="Määritelmä">
                        <HeaderStyle Width="50px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="KESK_TEKIJAT" HeaderText="Keskeiset tekijät" SortExpression="KESK_TEKIJAT"
                        UniqueName="Tekijät">
                        <HeaderStyle Width="50px" />
                    </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="KUINKAPALJONTIETOAKERATAAN" HeaderText="Kuinka paljon tietoa kerätään" SortExpression="KUINKAPALJONTIETOAKERATAAN"
                        UniqueName="Tiedonkeruu">
                        <HeaderStyle Width="50px" />
                     </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="VASTUUHENKILOT" HeaderText="Vastuuhenkilöt" SortExpression="VASTUUHENKILOT"
                        UniqueName="Vastuu">
                        <HeaderStyle Width="50px" />
                    </telerik:GridBoundColumn>
                  <telerik:GridTemplateColumn HeaderText="Toiminnot" AllowFiltering="false">

                      <ItemTemplate>
                        <asp:LinkButton runat="server"
                           CommandName="Edit" 
                           style="padding-left:5px;"
                           UniqueName="EditButton"
                           HeaderText="Edit Command Column">
                           <i class="fa fa-pencil-alt" style='text-decoration: none;font-size:16px;color:black'></i>
                         </asp:LinkButton>
                        &nbsp;
                         <asp:LinkButton runat="server"
                           CommandName="Delete" 
                           style="padding-left:10px;"
                           UniqueName="DeleteColumn"
                           HeaderText="Delete Command Column">
                           <i class="fa fa-trash" style='text-decoration: none;font-size:16px;color:black'></i>
                         </asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="70px" />
                    </telerik:GridTemplateColumn>
                    
                </Columns>
            </MasterTableView>
            <ClientSettings AllowColumnsReorder="true" AllowColumnHide="true" AllowDragToGroup="true">
                <Selecting AllowRowSelect="true" />
                <Scrolling AllowScroll="true" UseStaticHeaders="true" />
            </ClientSettings>
        </telerik:RadGrid>
    </telerik:RadAjaxPanel>
    <telerik:RadCodeBlock runat="server">
        <script type="text/javascript">
            function onRequestStart(sender, args) {
                if (args.get_eventTarget().indexOf("Button") >= 0) {
                    args.set_enableAjax(false);
                }
            }
        </script>
    </telerik:RadCodeBlock>
</asp:Content>
