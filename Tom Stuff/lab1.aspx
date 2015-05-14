<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lab1.aspx.cs" Inherits="Lesson2.Lab1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <asp:Label ID="lblName" runat="server" Text="Student Name:"></asp:Label>
        <asp:TextBox ID="txtbxName" runat="server"></asp:TextBox>
    </div>

    <div>
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtbxPassword" runat="server" TextMode="Password"></asp:TextBox>
    </div>

    <div>
        <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
        <asp:TextBox ID="txtbxAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
    </div>

    <div>
        <asp:Label ID="lblEducation" runat="server" Text="Education Level:"></asp:Label>
        <asp:RadioButtonList ID="rbtnEducationList" runat="server">
            <asp:ListItem>Highschool</asp:ListItem>
            <asp:ListItem>College</asp:ListItem>
            <asp:ListItem>Graduate</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:RadioButtonList>
    </div>

    <div>
        <asp:CheckBox ID="cbxHaveLaptop" runat="server" Text="Yes I have a laptop:" 
            TextAlign="Left"></asp:CheckBox>
    </div>

    <div>
         <asp:Label ID="lblSkillsList" runat="server" Text="Skills List:"> </asp:Label>
         <asp:CheckBox ID="cbxHTML" runat="server" Text="HTML"></asp:CheckBox> 
         <asp:CheckBox ID="cbxPHP" runat="server" Text="PHP"></asp:CheckBox> 
         <asp:CheckBox ID="cbxCSS" runat="server" Text="CSS"></asp:CheckBox> 
         <asp:CheckBox ID="cbxCSharp" runat="server" Text="C#"></asp:CheckBox>
         <asp:CheckBox ID="cbxJava" runat="server" Text="Java"></asp:CheckBox>
    </div>

    <div>
    <asp:Label ID="lblProvince" runat="server" Text="Province:"></asp:Label>
    <asp:DropDownList ID="tipPercentDropDownList" runat="server">
        <asp:ListItem Selected="True">AB</asp:ListItem>
        <asp:ListItem>BC</asp:ListItem>
        <asp:ListItem>ON</asp:ListItem>
        <asp:ListItem>QC</asp:ListItem>
    </asp:DropDownList>
    </div>

    <div>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" ></asp:Button>
    </div>

    <div>
        <asp:Label ID="lblInformationSubmitted" runat="server" 
            Text="Student Information Submitted: " Visible="False"></asp:Label>
    </div>
    
    <div>
        <asp:Label ID="lblOutputStudentName" runat="server" Text="Student Name: " 
            Visible="False"></asp:Label>
    </div>
    
    <div>
        <asp:Label ID="lblOutputPassword" runat="server" Text="Password: " 
            Visible="False"></asp:Label>
    </div>
    
    <div>
        <asp:Label ID="lblOutputAddress" runat="server" Text="Address: " 
            Visible="False"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblOutputEducation" runat="server" Text="Education: " 
            Visible="False"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblOutputHaveLaptop" runat="server" Visible="False"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblOutputSkillsList" runat="server" Text="Skill List: " 
            Visible="False"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblOutputProvince" runat="server" Text="Province: " 
            Visible="False"></asp:Label>
    </div>

</asp:Content>
