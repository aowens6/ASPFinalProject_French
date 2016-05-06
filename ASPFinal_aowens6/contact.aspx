<%@ Page Title="Contact" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="ASPFinal_aowens6.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <div id="contactInfo">
        <asp:Label ID="lblFirstName" runat="server" Text="First Name" CssClass="formInput"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server" CssClass="formInput"></asp:TextBox><br />

        <asp:Label ID="lblLastName" runat="server" Text="Last Name" CssClass="formInput"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server" CssClass="formInput"></asp:TextBox><br />

        <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="formInput"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="formInput"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="You must enter an email" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator><br />

        <asp:Label ID="lblMessage" runat="server" Text="Message" CssClass="formInput"></asp:Label>
        <asp:TextBox ID="txtMessage" runat="server" Height="100px" Width="500px" CssClass="formInput"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Please enter a message" ControlToValidate="txtMessage" Display="None"></asp:RequiredFieldValidator><br />
                    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="formInput"/>
    </div>
</asp:Content>
