<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeFile="Grid.aspx.cs" Inherits="Grid" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="styles/grid.css" rel="stylesheet" />
  <script src="scripts/fontawesome/all.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout runat="server" ID="JumbotronLayout" CssClass="jumbotron" GridType="Fluid">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="10" SpanMd="12" SpanSm="12" SpanXs="12">
                      
                        <telerik:RadButton runat="server" ID="RadButton0" Text="Button" ButtonType="SkinnedButton"></telerik:RadButton>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <telerik:RadAjaxPanel ID="RadAjaxPanel1" ClientEvents-OnRequestStart="onRequestStart" runat="server" CssClass="grid_wrapper">
        <telerik:RadGrid ID="RadGrid1" runat="server" PageSize="10" PagerStyle-PageButtonCount="5"
            OnNeedDataSource="RadGrid1_NeedDataSource" OnItemCreated="RadGrid1_ItemCreated" OnItemDataBound="RadGrid1_ItemDataBound"
            OnUpdateCommand="RadGrid1_UpdateCommand" OnInsertCommand="RadGrid1_InsertCommand" OnDeleteCommand="RadGrid1_DeleteCommand"
            AllowPaging="True" AllowSorting="true" ShowGroupPanel="true" RenderMode="Auto">
            <GroupingSettings ShowUnGroupButton="true" />
            <ExportSettings ExportOnlyData="true" IgnorePaging="true"></ExportSettings>
            <MasterTableView AutoGenerateColumns="False"
                AllowFilteringByColumn="true" TableLayout="Fixed"
                DataKeyNames="HENKILO_ID, KAUPUNKI_ID" CommandItemDisplay="Top"
                InsertItemPageIndexAction="ShowItemOnFirstPage">
                <CommandItemSettings ShowExportToCsvButton="true" ShowExportToExcelButton="true" ShowExportToPdfButton="true" ShowExportToWordButton="true" />
                <Columns>
                    <telerik:GridBoundColumn DataField="NIMI" HeaderText="Prosessin nimi" SortExpression="NIMI"
                        UniqueName="Name">
                        <HeaderStyle Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="IKA" HeaderText="Mitattava asia" SortExpression="IKA"
                        UniqueName="Age">
                        <HeaderStyle Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridDateTimeColumn DataField="SYNTYMAAIKA" HeaderText="Datan tyyppi" SortExpression="SYNTYMAAIKA"
                        UniqueName="BirthDate" PickerType="DatePicker" DataFormatString="{0:MM/dd/yyyy}">
                        <HeaderStyle Width="100px" />
                    </telerik:GridDateTimeColumn>
                    <telerik:GridRatingColumn DataField="ARVIO" HeaderText="Toiminnallinen määritelmä" SortExpression="ARVIO"
                        UniqueName="Rating" GroupByExpression="Rating Group By Rating">
                        <HeaderStyle Width="100px" />
                    </telerik:GridRatingColumn>
                    <telerik:GridDropDownColumn DataField="KAUPUNKI_NIMI" HeaderText="Keskeiset tekijät" SortExpression="KAUPUNKI_NIMI"
                        ListDataMember="KAUPUNKI_ID" ListTextField="KAUPUNKI_NIMI"
                        UniqueName="City" DropDownControlType="RadComboBox">
                        <HeaderStyle Width="100px" />
                    </telerik:GridDropDownColumn>
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