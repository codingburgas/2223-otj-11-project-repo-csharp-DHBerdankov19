using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ClearNote
{
    public partial class TasksForm : Form
    {
        DataTable tasks = new DataTable();
        bool editing = false;
        public TasksForm()
        {
            InitializeComponent();
        }

        private void TasksForm_Load(object sender, EventArgs e)
        {
            tasks.Columns.Add("Task");
            previousTasks.DataSource = tasks;
        }

        private void notesButton_Click(object sender, EventArgs e)
        {
            this.Hide(); // Hide the current form (second form)
            NotesForm mainForm = new NotesForm(); // Create an instance of the first form
            mainForm.Show(); // Show the first form
        }

        private void deleteButton2_Click(object sender, EventArgs e)
        {
            try
            {
                tasks.Rows[previousTasks.CurrentCell.RowIndex].Delete();
            }
            catch { Console.WriteLine("Not a valid task"); }
        }

        private void newButton2_Click(object sender, EventArgs e)
        {
            taskBox.Text = "";
        }

        private void saveButton2_Click(object sender, EventArgs e)
        {
            if (editing)
            {
                taskBox.Text = tasks.Rows[previousTasks.CurrentCell.RowIndex].ItemArray[0].ToString();
            }
            else
            {
                tasks.Rows.Add(taskBox.Text);
            }
            taskBox.Text = "";
            editing = false;
        }

        private void loadButton2_Click(object sender, EventArgs e)
        {
            taskBox.Text = tasks.Rows[previousTasks.CurrentCell.RowIndex].ItemArray[0].ToString();
            editing = true;
        }

        private void previousTasks_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void previousTasks_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            taskBox.Text = tasks.Rows[previousTasks.CurrentCell.RowIndex].ItemArray[0].ToString();
            editing = true;
        }

        private void dueDate_ValueChanged(object sender, EventArgs e)
        {

        }
    }
}
