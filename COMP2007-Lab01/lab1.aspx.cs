using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lesson2
{
    public partial class Lab1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //String variables for student information
            //Variables name, password and address are taking their string values from their
            //respective textboxes
            string name = txtbxName.Text;
            string password = txtbxPassword.Text;
            string address = txtbxAddress.Text;
            string education;
            string haveLaptop;
            string skills = "";
            string province;
            
            //variable education will determine its value from which radio button is selected
            education = rbtnEducationList.SelectedValue;

            //the haveLaptop variable will be determined on if the have laptop checkbox is checked off or not
            if (cbxHaveLaptop.Checked){
                haveLaptop = "Yes I have a laptop";
            }
            else {
                haveLaptop = "No I do not have a laptop";
            }

            //the skills variable may have one or more string values added depending on what checkboxes are selected
            if(cbxHTML.Checked){
                skills += "HTML ";
            }
            
            if (cbxPHP.Checked){
                skills += "PHP ";
            }
            
            if (cbxCSS.Checked){
                skills += "CSS ";
            }

            if (cbxCSharp.Checked){
                skills += "C# ";
            }

            if (cbxJava.Checked){
                skills += "Java";
            }

            //variable province will determine its value from which item is selected from the dropdown list
            province = tipPercentDropDownList.SelectedValue;
            
            //output all student information to their respective labels
            lblOutputStudentName.Text += name;
            lblOutputPassword.Text += password;
            lblOutputAddress.Text += address;
            lblOutputEducation.Text += education;
            lblOutputHaveLaptop.Text += haveLaptop;
            lblOutputSkillsList.Text += skills;
            lblOutputProvince.Text += province;

            //make all output labels visible
            lblInformationSubmitted.Visible = true;
            lblOutputStudentName.Visible = true;
            lblOutputPassword.Visible = true;
            lblOutputAddress.Visible = true;
            lblOutputEducation.Visible = true;
            lblOutputHaveLaptop.Visible = true;
            lblOutputSkillsList.Visible = true;
            lblOutputProvince.Visible = true;
        }
    }
}