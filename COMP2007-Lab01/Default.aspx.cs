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
            //Starting setup
            otherInput.Enabled = false;
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            //Variable definition
            String studentName;
            String password ="";
            String fullAddress;
            String educationLevel;
            String laptop;
            String skills = "";
            String province;
            
            //  -----INPUTS-----
            //Student name
            studentName = studentNameInput.Text;
            
            //Password
            for (int x = 0; x < passwordInput.Text.Length; x++)
            {
                password += "*";
            }

            //Full Address
            fullAddress = fullAddressInput.Text;
            
            //Education Level
            educationLevel = educationLevelRadioButtonList.SelectedValue;

            if (educationLevel == "Other")
            {
                educationLevel += ": " + otherInput.Text;
            }

            //Owns a laptop?
            if (laptopInput.Checked == true)
            {
                laptop = "Owns a laptop";
            }
            else
            {
                laptop = "Doesn't own a laptop";
            }

            //Skills
            foreach (ListItem item in skillCheckBoxList.Items)
            {
                if (item.Selected) {
                    if (skills != "")
                        skills += ", ";

                    //Add the value
                    skills += item.Value;                
                }

            }
            
            //Province
            province = provinceDropDownList.SelectedValue;

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
            otherInput.Enabled = false;
            otherInput.Text = "";

            //Check if Other was selected
            if (educationLevelRadioButtonList.SelectedValue == "Other")
            {
                otherInput.Enabled = true;
            }
        }

        protected void clearForm()
        {
            //Clear all fields and the result of the Submit
            studentNameInput.Text = "";
            passwordInput.Text = "";
            fullAddressInput.Text = "";
            educationLevelRadioButtonList.SelectedValue = null;
            otherInput.Text = "";
            otherInput.Enabled = false;
            laptopInput.Checked = false;

            foreach (ListItem item in skillCheckBoxList.Items)
            {
                item.Selected = false;
            }

            provinceDropDownList.SelectedValue = null;

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