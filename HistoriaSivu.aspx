<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeFile="HistoriaSivu.aspx.cs" Inherits="Grid" %>
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
            AllowPaging="True" AllowSorting="true" ShowGroupPanel="false" RenderMode="Auto">
            <GroupingSettings ShowUnGroupButton="true" />
            <ExportSettings ExportOnlyData="true" IgnorePaging="true"></ExportSettings>
            <MasterTableView AutoGenerateColumns="False"
                AllowFilteringByColumn="false" TableLayout="Fixed"
                DataKeyNames="PROJEKTIN_NIMI" CommandItemDisplay="Top"
                InsertItemPageIndexAction="ShowItemOnFirstPage">

                <Columns>
                    <telerik:GridBoundColumn DataField="ID" HeaderText="ID" SortExpression="ID" Display="false"
                        UniqueName="ID">
                        <HeaderStyle Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="PROJEKTINNIMI" HeaderText="Projektin nimi" SortExpression="PROJEKTINNIMI"
                        UniqueName="Name">
                        <HeaderStyle Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ONGELMAN_KUVAUS" HeaderText="Ongelman kuvaus" SortExpression="ONGELMAN_KUVAUS"
                        UniqueName="Ongelma">
                        <HeaderStyle Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LT_SUUNNITELMA" HeaderText="Liiketoiminta-ajatus" SortExpression="LT_SUUNNITELMA"
                        UniqueName="Liiketoiminta">
                        <HeaderStyle Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="TAV_MAARITTELY" HeaderText="Tavoitteiden määrittely" SortExpression="TAV_MAARITTELY"
                        UniqueName="Tavoite">
                        <HeaderStyle Width="100px" />
                    </telerik:GridBoundColumn>
                  
                  <telerik:GridTemplateColumn HeaderText="Toiminnot" AllowFiltering="false">

                      <ItemTemplate>
                        <asp:LinkButton runat="server"
                           style="padding-left:5px;"
                           UniqueName="EditButton"
                           HeaderText="Edit Command Column"
                            PostBackUrl='<%# "http://localhost:53372/MalliSivu.aspx?ID=" + Eval("ID")%>'>
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