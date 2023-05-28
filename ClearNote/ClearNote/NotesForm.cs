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
    public partial class NotesForm : Form
    {
        DataTable notes = new DataTable();
        bool editing = false;
        public NotesForm()
        {
            InitializeComponent();
        }

        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-H9CUPD4\SQLEXPRESS;Initial Catalog=ClearNoteDB;Integrated Security=True");

        private void deleteButton_Click(object sender, EventArgs e)
        {
            try
            {
                notes.Rows[previousNotes.CurrentCell.RowIndex].Delete();
            }
            catch { Console.WriteLine("Not a valid note"); }
        }

        private void loadButton_Click(object sender, EventArgs e)
        {
            titleBox.Text = notes.Rows[previousNotes.CurrentCell.RowIndex].ItemArray[0].ToString();
            noteBox.Text = notes.Rows[previousNotes.CurrentCell.RowIndex].ItemArray[1].ToString();
            editing = true;
        }

        private void newButton_Click(object sender, EventArgs e)
        {
            titleBox.Text = "";
            noteBox.Text = "";
        }

        private void saveButton_Click(object sender, EventArgs e)
        {
            if (editing)
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Note([Title],[Content]) VALUES ('" + titleBox.Text + "','" + noteBox.Text + "')", conn);
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Successfully Saved!");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                conn.Close();

            }
            else
            {
                notes.Rows.Add(titleBox.Text, noteBox.Text);
            }
            titleBox.Text = "";
            noteBox.Text = "";
            editing = false;
        }

        private void NotesForm_Load(object sender, EventArgs e)
        {
            notes.Columns.Add("Title");
            notes.Columns.Add("Note");

            previousNotes.DataSource = notes;
        }

        private void previousNotes_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            titleBox.Text = notes.Rows[previousNotes.CurrentCell.RowIndex].ItemArray[0].ToString();
            noteBox.Text = notes.Rows[previousNotes.CurrentCell.RowIndex].ItemArray[1].ToString();
            editing = true;
        }

        private void tasksButton_Click(object sender, EventArgs e)
        {
            this.Hide(); // Hide the current form
            TasksForm secondForm = new TasksForm(); // Create an instance of the second form
            secondForm.Show(); // Show the second form
        }
    }
}