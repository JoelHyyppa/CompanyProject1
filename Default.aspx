<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn CssClass="jumbotron">
                        <h1>Tervetuloa!</h1>
                        <h2>Aloita uuden prosessin luominen klikkaamalla yläpalkista "Luo uusi".</h2>
                            <h2>Mittausvaiheessa olevia prosesseja voit tarkistella välilehdellä "Tiedonkeruu."</h2>
                                 <h2>Määrittelyvaiheen projekteja voit tarkastella ja muokata välilehdellä "Aiemmat projektit."</h2>


                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
           
        </Rows>
    </telerik:RadPageLayout>

</asp:Content>