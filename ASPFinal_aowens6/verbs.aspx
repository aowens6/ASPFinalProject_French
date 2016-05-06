<%@ Page Title="Verbs" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="verbs.aspx.cs" Inherits="ASPFinal_aowens6.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <p>verb content</p>
    <asp:SqlDataSource ID="sdsVerbs" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VerbConnectionString %>" DeleteCommand="DELETE FROM [Verbs] WHERE [Id] = @original_Id AND (([infinitive] = @original_infinitive) OR ([infinitive] IS NULL AND @original_infinitive IS NULL)) AND (([translation] = @original_translation) OR ([translation] IS NULL AND @original_translation IS NULL)) AND (([je] = @original_je) OR ([je] IS NULL AND @original_je IS NULL)) AND (([tu] = @original_tu) OR ([tu] IS NULL AND @original_tu IS NULL)) AND (([ilElleOn] = @original_ilElleOn) OR ([ilElleOn] IS NULL AND @original_ilElleOn IS NULL)) AND (([nous] = @original_nous) OR ([nous] IS NULL AND @original_nous IS NULL)) AND (([vous] = @original_vous) OR ([vous] IS NULL AND @original_vous IS NULL)) AND (([ilsElles] = @original_ilsElles) OR ([ilsElles] IS NULL AND @original_ilsElles IS NULL))" InsertCommand="INSERT INTO [Verbs] ([infinitive], [translation], [je], [tu], [ilElleOn], [nous], [vous], [ilsElles]) VALUES (@infinitive, @translation, @je, @tu, @ilElleOn, @nous, @vous, @ilsElles)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Verbs]" UpdateCommand="UPDATE [Verbs] SET [infinitive] = @infinitive, [translation] = @translation, [je] = @je, [tu] = @tu, [ilElleOn] = @ilElleOn, [nous] = @nous, [vous] = @vous, [ilsElles] = @ilsElles WHERE [Id] = @original_Id AND (([infinitive] = @original_infinitive) OR ([infinitive] IS NULL AND @original_infinitive IS NULL)) AND (([translation] = @original_translation) OR ([translation] IS NULL AND @original_translation IS NULL)) AND (([je] = @original_je) OR ([je] IS NULL AND @original_je IS NULL)) AND (([tu] = @original_tu) OR ([tu] IS NULL AND @original_tu IS NULL)) AND (([ilElleOn] = @original_ilElleOn) OR ([ilElleOn] IS NULL AND @original_ilElleOn IS NULL)) AND (([nous] = @original_nous) OR ([nous] IS NULL AND @original_nous IS NULL)) AND (([vous] = @original_vous) OR ([vous] IS NULL AND @original_vous IS NULL)) AND (([ilsElles] = @original_ilsElles) OR ([ilsElles] IS NULL AND @original_ilsElles IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_infinitive" Type="String" />
            <asp:Parameter Name="original_translation" Type="String" />
            <asp:Parameter Name="original_je" Type="String" />
            <asp:Parameter Name="original_tu" Type="String" />
            <asp:Parameter Name="original_ilElleOn" Type="String" />
            <asp:Parameter Name="original_nous" Type="String" />
            <asp:Parameter Name="original_vous" Type="String" />
            <asp:Parameter Name="original_ilsElles" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="infinitive" Type="String" />
            <asp:Parameter Name="translation" Type="String" />
            <asp:Parameter Name="je" Type="String" />
            <asp:Parameter Name="tu" Type="String" />
            <asp:Parameter Name="ilElleOn" Type="String" />
            <asp:Parameter Name="nous" Type="String" />
            <asp:Parameter Name="vous" Type="String" />
            <asp:Parameter Name="ilsElles" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="infinitive" Type="String" />
            <asp:Parameter Name="translation" Type="String" />
            <asp:Parameter Name="je" Type="String" />
            <asp:Parameter Name="tu" Type="String" />
            <asp:Parameter Name="ilElleOn" Type="String" />
            <asp:Parameter Name="nous" Type="String" />
            <asp:Parameter Name="vous" Type="String" />
            <asp:Parameter Name="ilsElles" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_infinitive" Type="String" />
            <asp:Parameter Name="original_translation" Type="String" />
            <asp:Parameter Name="original_je" Type="String" />
            <asp:Parameter Name="original_tu" Type="String" />
            <asp:Parameter Name="original_ilElleOn" Type="String" />
            <asp:Parameter Name="original_nous" Type="String" />
            <asp:Parameter Name="original_vous" Type="String" />
            <asp:Parameter Name="original_ilsElles" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gvVerb" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsVerbs" style="margin-top: 0px" OnSelectedIndexChanged="gvVerb_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="infinitive" HeaderText="Infinitive" SortExpression="infinitive" />
            <asp:BoundField DataField="translation" HeaderText="translation" SortExpression="translation" />
            <asp:BoundField DataField="je" HeaderText="je" SortExpression="je" />
            <asp:BoundField DataField="tu" HeaderText="tu" SortExpression="tu" />
            <asp:BoundField DataField="ilElleOn" HeaderText="Il Elle On" SortExpression="ilElleOn" />
            <asp:BoundField DataField="nous" HeaderText="nous" SortExpression="nous" />
            <asp:BoundField DataField="vous" HeaderText="vous" SortExpression="vous" />
            <asp:BoundField DataField="ilsElles" HeaderText="ilsElles" SortExpression="ilsElles" />
        </Columns>
    </asp:GridView>
    <asp:FormView ID="frvVerb" runat="server" DataKeyNames="Id" DataSourceID="sdsVerbs">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            infinitive:
            <asp:TextBox ID="infinitiveTextBox" runat="server" Text='<%# Bind("infinitive") %>' />
            <br />
            translation:
            <asp:TextBox ID="translationTextBox" runat="server" Text='<%# Bind("translation") %>' />
            <br />
            je:
            <asp:TextBox ID="jeTextBox" runat="server" Text='<%# Bind("je") %>' />
            <br />
            tu:
            <asp:TextBox ID="tuTextBox" runat="server" Text='<%# Bind("tu") %>' />
            <br />
            ilElleOn:
            <asp:TextBox ID="ilElleOnTextBox" runat="server" Text='<%# Bind("ilElleOn") %>' />
            <br />
            nous:
            <asp:TextBox ID="nousTextBox" runat="server" Text='<%# Bind("nous") %>' />
            <br />
            vous:
            <asp:TextBox ID="vousTextBox" runat="server" Text='<%# Bind("vous") %>' />
            <br />
            ilsElles:
            <asp:TextBox ID="ilsEllesTextBox" runat="server" Text='<%# Bind("ilsElles") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            infinitive:
            <asp:TextBox ID="infinitiveTextBox" runat="server" Text='<%# Bind("infinitive") %>' />
            <br />
            translation:
            <asp:TextBox ID="translationTextBox" runat="server" Text='<%# Bind("translation") %>' />
            <br />
            je:
            <asp:TextBox ID="jeTextBox" runat="server" Text='<%# Bind("je") %>' />
            <br />
            tu:
            <asp:TextBox ID="tuTextBox" runat="server" Text='<%# Bind("tu") %>' />
            <br />
            ilElleOn:
            <asp:TextBox ID="ilElleOnTextBox" runat="server" Text='<%# Bind("ilElleOn") %>' />
            <br />
            nous:
            <asp:TextBox ID="nousTextBox" runat="server" Text='<%# Bind("nous") %>' />
            <br />
            vous:
            <asp:TextBox ID="vousTextBox" runat="server" Text='<%# Bind("vous") %>' />
            <br />
            ilsElles:
            <asp:TextBox ID="ilsEllesTextBox" runat="server" Text='<%# Bind("ilsElles") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            Infinitive:
            <asp:Label ID="infinitiveLabel" runat="server" Text='<%# Bind("infinitive") %>' />
            <br />
            Translation:
            <asp:Label ID="translationLabel" runat="server" Text='<%# Bind("translation") %>' />
            <br />
            Je:
            <asp:Label ID="jeLabel" runat="server" Text='<%# Bind("je") %>' />
            <br />
            Tu:
            <asp:Label ID="tuLabel" runat="server" Text='<%# Bind("tu") %>' />
            <br />
            Il, Elle, On:
            <asp:Label ID="ilElleOnLabel" runat="server" Text='<%# Bind("ilElleOn") %>' />
            <br />
            Nous:
            <asp:Label ID="nousLabel" runat="server" Text='<%# Bind("nous") %>' />
            <br />
            vous:
            <asp:Label ID="vousLabel" runat="server" Text='<%# Bind("vous") %>' />
            <br />
            Ils, Elles:
            <asp:Label ID="ilsEllesLabel" runat="server" Text='<%# Bind("ilsElles") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
