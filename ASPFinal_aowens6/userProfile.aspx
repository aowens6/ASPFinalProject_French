<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="ASPFinal_aowens6.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h2>My Profile</h2>
    <div>
        
        <h3>
            <span id="userFirstName" runat="server"></span>
             <span id="userLastName" runat="server"></span>
        </h3>
        
        <p>Username:&nbsp;</p><span id="userUsername" runat="server"></span><br />
        <p>Score:&nbsp;</p><span id="userScore" runat="server"></span><br />
        <p>Level:&nbsp;</p><span id="userLevel" runat="server"></span><br />
    </div>
    

    <a href="lessons.aspx">Begin Lesson 1</a>
    
    
</asp:Content>
