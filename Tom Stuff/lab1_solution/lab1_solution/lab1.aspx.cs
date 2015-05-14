using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab1_solution
{
    public partial class lab1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblName.Text = "Name: " + txtName.Text;
            lblPassword.Text = "Password: " + txtPassword.Text;
            lblAddress.Text = "Address: " + txtAddress.Text;
            lblEducation.Text = "Education: " + rblEducation.SelectedValue;
            lblLaptop.Text = "Has Laptop: " + chkLaptop.Checked.ToString();

            //loop through skills checkbox list to build skill list dynamically
            lblSkills.Text = "Skills: ";
            foreach (ListItem item in cblSkills.Items)
            {
                if (item.Selected)
                {
                    lblSkills.Text += item.Text + " ";
                }
            }

            lblProvince.Text = "Province: " + ddlProvince.SelectedValue;
        }
    }
}