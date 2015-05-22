using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Lab01
{
    public partial class Lab01_Acevedo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OtherInputTextBox.Enabled = false;
            OtherInputTextBox.Text = "";
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            //Variable definition
            String studentName;
            String password = "";
            String fullAddress;
            String educationLevel;
            String laptop;
            String skills = "";
            String province;
            
            //  -----INPUTS-----
            //Student name
            studentName = StudentNameTextBox.Text;
            
            //Password
            for (int x = 0; x < PasswordTextBox.Text.Length; x++)
            {
                password += "*";
            }

            //Full Address
            fullAddress = AddressTextBox.Text;
            
            //Education Level
            educationLevel = EducationLevelRadioButtonList.SelectedValue;

            if (educationLevel == "Other")
            {
                educationLevel += ": " + OtherInputTextBox.Text;
            }

            //Owns a laptop?
            if (LaptopCheckBox.Checked == true)
            {
                laptop = "Owns a laptop";
            }
            else
            {
                laptop = "Doesn't own a laptop";
            }

            //Skills
            foreach (ListItem item in SkillCheckBoxList.Items)
            {
                if (item.Selected) {
                    if (skills != "")
                        skills += ", ";

                    //Add the value
                    skills += item.Value;                
                }

            }
            
            //Province
            province = ProvinceDropDownList.SelectedValue;

            //Clear the form
            clearForm();

            //  -----OUTPUT-----
            studentNameOutput.Text = studentName;
            passwordOutput.Text = password;
            fullAddressOutput.Text = fullAddress;
            educationLevelOutput.Text = educationLevel;
            laptopOutput.Text = laptop;
            skillLevelOutput.Text = skills;
            provinceOutput.Text = province;
        }

        protected void educationLevelRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Always disable and clear the input box
            OtherInputTextBox.Enabled = false;
            OtherInputTextBox.Text = "";

            //Check if Other was selected
            if (EducationLevelRadioButtonList.SelectedValue == "Other")
            {
                OtherInputTextBox.Enabled = true;
            }
        }

        protected void clearForm()
        {
            //Clear all fields and the result of the Submit
            StudentNameTextBox.Text = "";
            PasswordTextBox.Text = "";
            AddressTextBox.Text = "";
            EducationLevelRadioButtonList.SelectedValue = null;
            OtherInputTextBox.Text = "";
            OtherInputTextBox.Enabled = false;
            LaptopCheckBox.Checked = false;

            foreach (ListItem item in SkillCheckBoxList.Items)
            {
                item.Selected = false;
            }

            ProvinceDropDownList.SelectedValue = null;

            //Clear the output
            studentNameOutput.Text = "";
            passwordOutput.Text = "";
            fullAddressOutput.Text = "";
            educationLevelOutput.Text = "";
            laptopOutput.Text = "";
            skillLevelOutput.Text = "";
            provinceOutput.Text = "";
        }

        //Clears the form when requested by the user
        protected void clearFormButton_Click(object sender, EventArgs e)
        {
            clearForm();
        }
    }
}