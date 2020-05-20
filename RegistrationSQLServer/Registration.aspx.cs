using RegistrationSQLServer.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationSQLServer
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enterInfoButton_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                // send user info to database
                BusinessLayer.UserInformation ui = new BusinessLayer.UserInformation();


                ui.FirstName = Server.HtmlEncode(firstNameTextBox.Text);
                ui.LastName = Server.HtmlEncode(lastNameTextBox.Text);
                ui.Address = Server.HtmlEncode(addressTextBox.Text);
                ui.City = Server.HtmlEncode(cityTextBox.Text);
                ui.Province = Server.HtmlEncode(stateOrProvinceTextBox.Text);
                ui.PostalCode = Server.HtmlEncode(zipCodeTextBox.Text);
                ui.Country = Server.HtmlEncode(countryTextBox.Text);

                if(DBLayer.DBUtilities.InsertUserInformation(ui) == 1)
                {
                    lblResult.Text = "User was successfully added!";
                }
                else
                {
                    lblResult.Text = "Uh oh!";
                }
                
                //Response.Redirect("RegistrationResult.aspx");
            }
        }
    }
}