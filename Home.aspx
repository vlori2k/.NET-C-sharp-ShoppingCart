<%-- "~/Home.master" is important duo to get the standard template also on this file --%>
<%-- But remember to have CodeFile="Home.aspx.cs" Inherits="Home", this is a bug on 2017 which does not add this automatically.--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
