using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace CarSales.User
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage emailMsg = new MailMessage();
                emailMsg.From = new MailAddress(txtEmail.Text);
                emailMsg.To.Add(new MailAddress("omar@omarzikri.com", "Omar Zikri"));
                emailMsg.Subject = txtName.Text;
                emailMsg.Body = txtMessage.Text;
                emailMsg.Priority = MailPriority.Normal;
                SmtpClient mailClient = new SmtpClient("smtp.secureserver.net");

                //SmtpClient mailClient = new SmtpClient("smtpout.secureserver.net");
                mailClient.Credentials = new System.Net.NetworkCredential("omar@omarzikri.com", "zikri30919823");

                mailClient.Send(emailMsg);
                lblResult.Text = "Your Message has been successfully sent";
            }
            catch (Exception)
            {
                lblResult.Text = "Your Message has not been successfully sent";
            }
        }
    }
}