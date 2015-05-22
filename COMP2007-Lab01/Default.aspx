<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP2007_Lab01.Lab01_Acevedo" EnableViewState="true" %>

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
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Register System</title>

    <!-- CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />

</head>
<body>
    <div class="container-fluid">
        <div class="col-md-8 col-xs-10 col-md-offset-2 col-xs-offset-1">
            <!-- Header -->
            <div class="page-header">
                <header>
                    <h1>Welcome</h1>
                    <h4>Please enter your personal information</h4>
                </header>
            </div>

            <!-- Form -->
            <div id="main">
                <form id="form1" runat="server" class="form-group" autocomplete="off">

                    <div>
                        <asp:Label ID="StudentNameLabel" runat="server" Text="Label">Student Name:</asp:Label>
                        <asp:TextBox ID="StudentNameTextBox" placeholder="Enter your name" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>


                    <div>
                        <asp:Label ID="PasswordLabel" runat="server" Text="Label">Password:</asp:Label>
                        <asp:TextBox ID="PasswordTextBox" placeholder="Enter your password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>


                    <div>
                        <asp:Label ID="AddressLabel" runat="server" Text="Label">Student Address:</asp:Label>
                        <asp:TextBox ID="AddressTextBox" placeholder="Enter your address" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>


                    <div>
                        <asp:Label ID="EducationLevelLabel" runat="server" Text="Label">Education Level:</asp:Label>
                        <asp:RadioButtonList ID="EducationLevelRadioButtonList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="educationLevelRadioButtonList_SelectedIndexChanged">
                            <asp:ListItem Text="High School"></asp:ListItem>
                            <asp:ListItem Text="College"></asp:ListItem>
                            <asp:ListItem Text="Graduate"></asp:ListItem>
                            <asp:ListItem Text="Other"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:TextBox ID="OtherInputTextBox" runat="server" CssClass="form-control" placeholder="If Other, please specify"></asp:TextBox>
                    </div>


                    <div>
                        <asp:Label ID="LaptopLabel" runat="server" Text="Label">Do you own a laptop?</asp:Label>
                        <asp:CheckBox ID="LaptopCheckBox" runat="server" Text="" />
                    </div>


                    <div>
                        <asp:Label ID="SkillListLabel" runat="server" Text="Label">Skill List:</asp:Label>
                        <asp:CheckBoxList ID="SkillCheckBoxList" runat="server">
                            <asp:ListItem Value="HTML" Text="HTML"></asp:ListItem>
                            <asp:ListItem Value="CSS" Text="CSS"></asp:ListItem>
                            <asp:ListItem Value="C#" Text="C#"></asp:ListItem>
                            <asp:ListItem Value="JAVA" Text="JAVA"></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>


                    <div>
                        <asp:Label ID="ProvinceLabel" runat="server" Text="Label">Province:</asp:Label>
                        <asp:DropDownList CssClass="form-control" ID="ProvinceDropDownList" runat="server">
                            <asp:ListItem Value="ON" Text="ON"></asp:ListItem>
                            <asp:ListItem Value="BC" Text="BC"></asp:ListItem>
                            <asp:ListItem Value="AB" Text="AB"></asp:ListItem>
                            <asp:ListItem Value="QC" Text="QC"></asp:ListItem>
                        </asp:DropDownList>
                    </div>


                    <div>
                        <asp:Button CssClass="btn btn-primary" ID="SubmitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
                        <asp:Button CssClass="btn btn-warning" ID="ClearFormButton" runat="server" Text="Clear" OnClick="clearFormButton_Click" />
                    </div>
                </form>

                <!-- Table -->
                <div>
                    <table class="table">
                        <tr>
                            <th>
                                <h3>Information Supplied</h3>
                            </th>
                        </tr>
                        <tr>
                            <th>Student Name:</th>
                            <td>
                                <asp:Label ID="studentNameOutput" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <th>Password:</th>
                            <td>
                                <asp:Label ID="passwordOutput" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <th>Address:</th>
                            <td>
                                <asp:Label ID="fullAddressOutput" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <th>Education Level:</th>
                            <td>
                                <asp:Label ID="educationLevelOutput" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <th>Laptop:</th>
                            <td>
                                <asp:Label ID="laptopOutput" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <th>Skill Level:</th>
                            <td>
                                <asp:Label ID="skillLevelOutput" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <th>Province:</th>
                            <td>
                                <asp:Label ID="provinceOutput" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <!--For testing purposes <div><asp:Label ID="TESTLABEL" runat="server" Text=""></asp:Label></div>-->

        <!-- JAVASCRIPT -->
        <script src="Scripts/jquery-1.9.1.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
    </div>
</body>
</html>
