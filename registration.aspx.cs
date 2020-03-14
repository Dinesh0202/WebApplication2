using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;


namespace WebApplication2
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con;
        Newconnection connect = new Newconnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            con = connect.connectionString();
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "btech_AI_procedure";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", sname.Text);
            cmd.Parameters.AddWithValue("@FatherName", fname.Text);
            cmd.Parameters.AddWithValue("@MobileNo", Convert.ToInt64(phone.Text));
            cmd.Parameters.AddWithValue("@FatherMobileNo", Convert.ToInt64(mnumber.Text));
            cmd.Parameters.AddWithValue("@Class", class1.Text);
            cmd.Parameters.AddWithValue("@Stream", stream1.Text);
            cmd.Parameters.AddWithValue("@EmailID", email.Text);
            cmd.Parameters.AddWithValue("@School", TextBoxSchool.Text);
            cmd.Parameters.AddWithValue("@CreateDate", DateTime.Now);
            cmd.Parameters.AddWithValue("@UserID", "PU-" + Studentidgen().ToString());
            cmd.Parameters.AddWithValue("@ID", SqlDbType.BigInt).Direction = ParameterDirection.Output;
            cmd.ExecuteNonQuery();
            con.Close();
            mail();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>Swal.fire({ icon: 'success', title: 'Your Register Done ', showConfirmButton: false, timer: 1500 });</script>");
            //@UserID,@Name,@FatherName,@MobileNo,@FatherMobileNo,@Class,@Stream,@EmailID,@School,@CreateDate
        }
        private int Studentidgen()
        {
            int i = 0;
            con = connect.connectionString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select Max(ID) from btech_AI", con);
            try
            {
                i = Convert.ToInt32(cmd.ExecuteScalar());

            }
            catch (Exception)
            {
            }
            finally
            {
                con.Close();

            }
            return ++i;

        }
        private void mail()
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("it@pacific-university.ac.in");
            mail.To.Add(email.Text);
            mail.Subject = "New Age Industry Inspired B. Tech Programs";
            mail.Body = "PU-" + Studentidgen().ToString();

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("it@pacific-university.ac.in", "paheritemail@2019");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
        }

    }
}