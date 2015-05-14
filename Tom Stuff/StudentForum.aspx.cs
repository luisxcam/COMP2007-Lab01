using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void subbutton_Click(object sender, EventArgs e)
        {
            NameLbl.Text = "Name: " + txtStuNam.Text;
            
            Addresslbl.Text = "Address: " + txtaddress.Text;

            edulbl.Text = "Education Level: " + RadioListEdu.SelectedItem;

            if (checkboxlaptop.Checked == true)
                Laplbl.Text = "This person is in possession of a laptop!";
            else
                Laplbl.Text = "This person is not in possession of a laptop.";

            Skillslbl.Text = "Your skills are";

            foreach (ListItem skillage in checklistSkills.Items)
            {
                if (checklistSkills.SelectedItem == unchecked)
                {
                    Skillslbl.Text = "you have no skills";
                }
                else 
                {
                    Skillslbl.Text = "Skills: " + checklistSkills.Items;
                }
            }



            ProvLbl.Text = "Province: " + dropdownprov.SelectedValue;
            


        }


    }
}
