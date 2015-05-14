<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="StudentForum.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        Student Name: <asp:textbox runat="server" id="txtStuNam"></asp:textbox>
    </div>
    <div>
        Password: <asp:textbox runat="server" id="txtpass" TextMode="Password"></asp:textbox>
    </div>
    <div>
        Address: <asp:textbox runat="server" id="txtaddress" TextMode="MultiLine"></asp:textbox>
    </div>
    <div>
        Education Level: <asp:RadioButtonList runat="server" Id="RadioListEdu">
            <asp:listitem text="High School"></asp:listitem>
            <asp:listitem text="College"></asp:listitem>
            <asp:listitem text="Graduate"></asp:listitem>
            <asp:listitem text="Other"></asp:listitem>
            </asp:RadioButtonList>
    </div>
    <div>
        Do you have a laptop? <asp:CheckBox runat="server" id="checkboxlaptop" />
    </div>
    <div>
        Skills: <asp:CheckBoxList runat="server" id="checklistSkills" >
                <asp:listitem text="Html"></asp:listitem>
                <asp:listitem text="PHP"></asp:listitem>
                <asp:listitem text="CSS"></asp:listitem>
                <asp:listitem text="C#"></asp:listitem>
                <asp:listitem text="Java"></asp:listitem>
                </asp:CheckBoxList>
    </div>
    <div>
        Province: <asp:DropDownList runat="server" ID="dropdownprov">
                <asp:listitem text="AB"></asp:listitem>
                <asp:listitem text="BC"></asp:listitem>
                <asp:listitem text="ON"></asp:listitem>
                <asp:listitem text="QC"></asp:listitem>
        </asp:DropDownList>
    </div>
    <div>
        <asp:Button runat="server" ID="subbutton" Text="Submit" 
            onclick="subbutton_Click" />
    </div>
    <div>
        <asp:Label runat="server" ID="NameLbl"></asp:Label>
    </div>
    <div>
        <asp:Label runat="server" ID="Addresslbl"></asp:Label>
    </div>
    <div>
        <asp:Label runat="server" ID="edulbl"></asp:Label>
    </div>
    <div>
        <asp:Label runat="server" ID="Laplbl"></asp:Label>
    </div>
    <div>
        <asp:Label runat="server" ID="Skillslbl"></asp:Label>
    </div>
    <div>
        <asp:Label runat="server" ID="ProvLbl"></asp:Label>
    </div>
</asp:Content>
