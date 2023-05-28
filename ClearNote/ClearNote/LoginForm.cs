using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace ClearNote
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-H9CUPD4\SQLEXPRESS;Initial Catalog=ClearNoteDB;Integrated Security=True");
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button_login_Click(object sender, EventArgs e)
        {
            String username, user_password;

            username = text_email.Text;
            user_password = text_password.Text;

            try
            {
                String querry = "SELECT * FROM [User] WHERE [Email] = '" + text_email.Text + "' AND [Password] = '" + text_password.Text + "'";
                SqlDataAdapter sda = new SqlDataAdapter(querry, conn);

                DataTable dtable = new DataTable();
                sda.Fill(dtable);

                if (dtable.Rows.Count > 0)
                {
                    username = text_email.Text;
                    user_password = text_password.Text;

                    NotesForm form2 = new NotesForm();
                    form2.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Invalid login details", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    text_email.Clear();
                    text_password.Clear();

                    text_email.Focus();
                }
            }
            catch
            {
                MessageBox.Show("Error");
            }
            finally
            {
                conn.Close();
            }
        }

        private void button_clear_Click(object sender, EventArgs e)
        {
            text_email.Clear();
            text_password.Clear();

            text_email.Focus();
        }

        private void button_exit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }
    }
}