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
            String password;
            String fullAddress;
            String educationLevel;
            String laptop;
            String skills = "";
            String province;
            
            //  -----INPUTS-----
            //Student name
            studentName = studentNameInput.Text;
            
            //Password
            password = passwordInput.Text;
            
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
                if (item.Selected)
                    skills += item.Text + ", ";
            }
            
            //Province
            province = provinceDropDownList.SelectedValue;

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
            otherInput.Enabled = false;

            if (educationLevelRadioButtonList.SelectedValue == "Other")
            {
                otherInput.Enabled = true;
            }
        }
    }
}