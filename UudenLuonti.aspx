
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageSingleMenu.Master" CodeFile="UudenLuonti.aspx.cs" Inherits="UudenLuonti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <link href="styles/mallisivu.css" rel="stylesheet" />
  <script src="scripts/fontawesome/all.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<telerik:RadPageLayout runat="server" ID="RadPageLayout2">
    <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn CssClass="jumbotron">
                          <h1>Uuden projektin luominen</h1>
                        <h3>Projektin nimi </h3>
                        <input type="text" id="projektinNimi" name="txtName" size="30" style='font-size: 20px;' required="" />
                        <h3>Lisääjä </h3>
                        <input type="text" id="lisääjä" name="txtName" size="30" style='font-size: 20px;' required="" />
                        
                    <asp:ImageButton ID="Button" runat="server" class="addMore" title="Tallenna" CssClass="btnstyle1" PostBackUrl="http://localhost:53372/MalliSivu.aspx" ImageUrl="https://icons.iconarchive.com/icons/custom-icon-design/flatastic-9/512/Accept-icon.png" Width="20px" Height="20px"/>
                    <asp:ImageButton ID="Button1" runat="server" class="addMore" title="Peruuta" CssClass="btnstyle2" PostBackUrl="http://localhost:53372/" ImageUrl="https://cdn-icons-png.flaticon.com/512/6056/6056831.png" Width="20px" Height="20px"/>
                        
                    

                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
        </telerik:RadPageLayout>
    </asp:Content>