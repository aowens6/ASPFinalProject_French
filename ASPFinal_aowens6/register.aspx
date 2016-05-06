<%@ Page Title="Register" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ASPFinal_aowens6.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <div id="createAccount">

        <div id="userInfo">
            <asp:Label ID="lblFirstName" runat="server" Text="First Name" CssClass="formLabel"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="formInput"></asp:TextBox>

            <asp:Label ID="lblLastName" runat="server" Text="Last Name" CssClass="formLabel"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="formInput"></asp:TextBox>

            <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="formLabel"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="formInput"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="You must enter an email" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>


            <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="formLabel"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="formInput"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="You must enter a username" ControlToValidate="txtUsername" Display="None"></asp:RequiredFieldValidator>

            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="formLabel"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="formInput"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="You must enter a valid password" ControlToValidate="txtPassword" Display="None"></asp:RequiredFieldValidator>
            

            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" CssClass="formLabel"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="formInput"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ErrorMessage="You must confirm your password" ControlToValidate="txtConfirmPassword" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ErrorMessage="Passwords do not match, try again" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"  Display="None"></asp:CompareValidator>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
             
        </div>
        <asp:Button ID="btnAccess" runat="server" Text="Access Lessons" OnClick="btnAccess_Click" CssClass="formInput"/>
    </div>
</asp:Content>
