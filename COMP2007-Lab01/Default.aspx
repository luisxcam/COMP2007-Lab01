<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="lab1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Student's profile
    </h2>
    <p>
        
        <b><asp:Label ID="lbl1" runat="server" Text="Student Name:  "></asp:Label></b>
        <asp:TextBox ID="tbox1" runat="server" Width="169px"></asp:TextBox>
    
    
    </p>
    <p>
        
       <b><asp:Label ID="lbl2" runat="server" Text="Password:  "></asp:Label></b>
        <asp:TextBox ID="tbox2" runat="server" Width="174px"></asp:TextBox>
      
    
    </p>
    <p>
        
        <b><asp:Label ID="lbl3" runat="server" Text="Full Address:"></asp:Label></b>
        <asp:TextBox ID="tbox3" runat="server" Height="23px" Width="238px"></asp:TextBox>
    
    
    </p>
    <p>
        
        <b>
            <asp:Label ID="lbl4" runat="server" Text="Education level: "></asp:Label>
        </b>
        <asp:RadioButton ID="High_Schoolradiobnt" runat="server" />
        <asp:Label ID="lbl5" runat="server" Text="High School"></asp:Label>
        
        <asp:RadioButton ID="Collegeradiobnt" runat="server" />
        <asp:Label ID="lbl6" runat="server" Text="College"></asp:Label>
        
        <asp:RadioButton ID="Graduateradiobnt" runat="server" />
        <asp:Label ID="lbl7" runat="server" Text="Graduate"></asp:Label>
        
        <asp:RadioButton ID="Otherradiobnt" runat="server" />
        <asp:Label ID="lbl8" runat="server" Text="Other"></asp:Label>
    </p>
    <p>
        
       <b> <asp:Label ID="lbl9" runat="server" Text="Click Yes, if you have laptop:  "></asp:Label></b>
        <asp:CheckBox ID="CheckBox1" runat="server" />
    </p>
    <p>
        
        <b><asp:Label ID="lbl10" runat="server" Text="Skills list:"></asp:Label></b>
        <asp:CheckBox ID="HTMLCheckBox" runat="server" />
        <asp:Label ID="lbl11" runat="server" Text="HTML"></asp:Label>
        <asp:CheckBox ID="PHPCheckBox3" runat="server" />
        <asp:Label ID="lbl12" runat="server" Text="PHP"></asp:Label>
        <asp:CheckBox ID="CSSCheckBox4" runat="server" />
        <asp:Label ID="lbl13" runat="server" Text="CSS"></asp:Label>
        <asp:CheckBox ID="CCheckBox5" runat="server" />
        <asp:Label ID="lbl14" runat="server" Text="C#"></asp:Label>
        <asp:CheckBox ID="JavaCheckBox6" runat="server" />
        <asp:Label ID="lbl15" runat="server" Text="Java"></asp:Label>
    </p>
    <p>
        
        <b><asp:Label ID="lbl16" runat="server" Text="Province:"></asp:Label></b>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>AB</asp:ListItem>
            <asp:ListItem>BC</asp:ListItem>
            <asp:ListItem>ON</asp:ListItem>
            <asp:ListItem>QC</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" 
            onclick="SubmitButton_Click" Width="78px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>
