<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReportEmployee._Default" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnPDF" runat="server" Text="PDF Format" onclick="btnPDF_Click" />
        </div>
        <div class="col-md-4">
            <asp:Button ID="btnExcel" runat="server" Text="EXCEL Format" onclick="btnExcel_Click"/>
        </div>
        <div class="col-md-4">
            <asp:Button ID="btnWord" runat="server" Text="WORD Format" onclick="btnWord_Click" Width="129px" />
        </div>
         
    </div>
    <div class="row">
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    </div>

</asp:Content>
