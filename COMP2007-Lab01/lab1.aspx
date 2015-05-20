﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab1.aspx.cs" Inherits="COMP2007_Lab01.Lab01_Acevedo" %>
<!-- 
Name: Luis Acevedo
ID: 200264686
Date: 2015-05-14

Lab 1 - Exploring ASP.NET Server Controls

For this lab you will build a student profile page using various .NET Server Controls from the Visual Studio toolbox.  You can drag and drop from the toolbox or hand-code the HTML (recommended).

Your application needs:
- input for student name[x]
- input for password (characters should be obscured)[x]
- full address (large block of text)[x]
- Education level (radio buttons: High School / College / Graduate / Other) - 1 selection only[x]
- Check if true (Yes, I have a laptop)[x]
- Skills list (check boxes: HTML / PHP / CSS / C# / Java) - multiple selection[x]
- Province (dropdown - AB / BC / ON / QC) - 1 selection only[x]
- Submit button[x]

When the user clicks Submit, the page should:
- display all the user input on the same page as a confirmation.  You will need 1 label for each input that shows what the user entered in each form field

Save your page as lab1.aspx.  To submit it, zip the following files and upload them to Blackboard:
- lab1.aspx
- lab1.aspx.cs
- lab1.ascx.designer.cs
-->
<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Register System</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />
</head>
<body>
    
    <div class="page-header">
        <h1>Welcome</h1>
        <h4>Please enter your personal information</h4>
    </div>

    <form id="form1" runat="server" class="form-group">
        <div id="main">

            <div><asp:Label ID="studentNameLabel" runat="server" Text="Label">Student Name:</asp:Label>
            <asp:TextBox ID="studentNameInput" runat="server" CssClass="form-control"></asp:TextBox></div>
            

            <div><asp:Label ID="passwordLabel" runat="server" Text="Label">Password:</asp:Label>
            <asp:TextBox ID="passwordInput" type="password" runat="server" CssClass="form-control"></asp:TextBox></div>
            

            <div><asp:Label ID="fullAddressLabel" runat="server" Text="Label">Student Address:</asp:Label>
            <asp:TextBox ID="fullAddressInput" runat="server" Height="240px" Width="240px" CssClass="form-control"></asp:TextBox></div>
            

            <div><asp:Label ID="educationLevelLabel" runat="server" Text="Label">Education Level:</asp:Label>
            <asp:RadioButtonList ID="educationLevelRadioButtonList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="educationLevelRadioButtonList_SelectedIndexChanged">
                <asp:ListItem Text="High School"></asp:ListItem>
                <asp:ListItem Text="College"></asp:ListItem>
                <asp:ListItem Text="Graduate"></asp:ListItem>
                <asp:ListItem Text="Other"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="otherInput" runat="server" CssClass="form-control"></asp:TextBox></div>
            

            <div class="input-group"><asp:CheckBox CssClass="input-group-addon" ID="laptopInput" runat="server" Text=""/>
                <asp:Label ID="laptopLabel" runat="server" Text="Label" CssClass="form-control">I own a laptop</asp:Label></div>
            

            <div><asp:Label ID="skillListLabel" runat="server" Text="Label">Skill List:</asp:Label>
            <asp:CheckBoxList ID="skillCheckBoxList" runat="server">
                <asp:ListItem Value="HTML" Text="HTML"></asp:ListItem>
                <asp:ListItem Value="CSS" Text="CSS"></asp:ListItem>
                <asp:ListItem Value="C#" Text="C#"></asp:ListItem>
                <asp:ListItem Value="JAVA" Text="JAVA"></asp:ListItem>
            </asp:CheckBoxList></div>
            

            <div><asp:Label ID="provinceLabel" runat="server" Text="Label">Province:</asp:Label>
            <asp:DropDownList ID="provinceDropDownList" runat="server">
                <asp:ListItem Value="ON" Text="ON"></asp:ListItem>
                <asp:ListItem Value="BC" Text="BC"></asp:ListItem>
                <asp:ListItem Value="AB" Text="AB"></asp:ListItem>
                <asp:ListItem Value="QC" Text="QC"></asp:ListItem>
            </asp:DropDownList></div>
            

            <div><asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" /></div>
            
        </div>
        <div>
            <div><asp:Label ID="studentNameOutput" runat="server" Text=""></asp:Label></div>
            <div><asp:Label ID="passwordOutput" runat="server" Text=""></asp:Label></div>
            <div><asp:Label ID="fullAddressOutput" runat="server" Text=""></asp:Label></div>
            <div><asp:Label ID="educationLevelOutput" runat="server" Text=""></asp:Label></div>
            <div><asp:Label ID="laptopOutput" runat="server" Text=""></asp:Label></div>
            <div><asp:Label ID="skillLevelOutput" runat="server" Text=""></asp:Label></div>
            <div><asp:Label ID="provinceOutput" runat="server" Text=""></asp:Label></div>
            <div><asp:Label ID="TESTLABEL" runat="server" Text=""></asp:Label></div>
        </div>
    </form>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
