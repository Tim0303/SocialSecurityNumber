<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SocialSecurityNumber.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SSNDB" 
            DataTextField="Area" DataValueField="Code" AppendDataBoundItems="true">
            <asp:ListItem Value="0">請選擇</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SSNDB" runat="server" ConnectionString="<%$ ConnectionStrings:SSNDBConnectionString %>" SelectCommand="SELECT [Code], [Area] FROM [AreaCode]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>

</asp:Content>
