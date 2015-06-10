<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab1.aspx.cs" Inherits="lab1_solution.lab1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label for="txtName">Name:</label>
        <asp:textbox id="txtName" runat="server" />
    </div>
    <div>
        <label for="txtPassword">Password:</label>
        <asp:textbox id="txtPassword" runat="server" textmode="Password" />
    </div>
    <div>
        <label for="txtAddress">Address:</label>
        <asp:textbox id="txtAddress" runat="server" textmode="MultiLine" />
    </div>
    <div>
        <label for="rblEducation">Education:</label>
        <asp:RadioButtonList ID="rblEducation" runat="server">
            <asp:ListItem Value="High School" Text="High School"></asp:ListItem>
            <asp:ListItem Value="College" Text="College"></asp:ListItem>
            <asp:ListItem Value="Graduate" Text="Graduate"></asp:ListItem>
            <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div>
        <label for="chkLaptop">Do you have a laptop? (check if yes):</label>
        <asp:CheckBox ID="chkLaptop" runat="server" />
    </div>
    <div>
        <label for="cblSkills">Skills List - Select all that apply:</label>
        <asp:CheckBoxList ID="cblSkills" runat="server">
            <asp:ListItem Value="HTML" Text="HTML"></asp:ListItem>
            <asp:ListItem Value="PHP" Text="PHP"></asp:ListItem>
            <asp:ListItem Value="CSS" Text="CSS"></asp:ListItem>
            <asp:ListItem Value="C#" Text="C#"></asp:ListItem>
            <asp:ListItem Value="Java" Text="Java"></asp:ListItem>
        </asp:CheckBoxList>
    </div>
    <div>
        <label for="ddlProvince">Province:</label>
        <asp:DropDownList ID="ddlProvince" runat="server">
            <asp:ListItem Value="AB" Text="AB"></asp:ListItem>
            <asp:ListItem Value="BC" Text="BC"></asp:ListItem>            
            <asp:ListItem Value="ON" Text="ON"></asp:ListItem> 
            <asp:ListItem Value="QC" Text="QC"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <asp:button id="btnSubmit" runat="server" text="Submit" onclick="btnSubmit_Click" />
        <div>
            <asp:label id="lblName" runat="server" />
        </div>
        <div>
            <asp:label id="lblPassword" runat="server" />
        </div>
        <div>
            <asp:label id="lblAddress" runat="server" />
        </div>
        <div>
            <asp:label id="lblEducation" runat="server" />
        </div>
        <div>
            <asp:label id="lblLaptop" runat="server" />
        </div>
        <div>
            <asp:label id="lblSkills" runat="server" />
        </div>
        <div>
            <asp:label id="lblProvince" runat="server" />
        </div>
    </form>
    </form>
</body>
</html>
