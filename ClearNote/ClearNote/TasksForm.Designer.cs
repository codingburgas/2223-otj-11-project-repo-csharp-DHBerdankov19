namespace ClearNote
{
    partial class TasksForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            notesButton = new Button();
            dueDate = new DateTimePicker();
            taskBox = new TextBox();
            label1 = new Label();
            label2 = new Label();
            previousTasks = new DataGridView();
            loadButton2 = new Button();
            saveButton2 = new Button();
            newButton2 = new Button();
            deleteButton2 = new Button();
            ((System.ComponentModel.ISupportInitialize)previousTasks).BeginInit();
            SuspendLayout();
            // 
            // notesButton
            // 
            notesButton.BackColor = Color.LightSeaGreen;
            notesButton.FlatAppearance.BorderSize = 0;
            notesButton.Font = new Font("Segoe UI", 14.25F, FontStyle.Regular, GraphicsUnit.Point);
            notesButton.Location = new Point(12, 12);
            notesButton.Name = "notesButton";
            notesButton.Size = new Size(98, 34);
            notesButton.TabIndex = 9;
            notesButton.Text = "Notes";
            notesButton.UseVisualStyleBackColor = false;
            notesButton.Click += notesButton_Click;
            // 
            // dueDate
            // 
            dueDate.Location = new Point(421, 209);
            dueDate.Name = "dueDate";
            dueDate.Size = new Size(234, 23);
            dueDate.TabIndex = 11;
            dueDate.ValueChanged += dueDate_ValueChanged;
            // 
            // taskBox
            // 
            taskBox.BackColor = Color.LightCyan;
            taskBox.Location = new Point(421, 103);
            taskBox.Name = "taskBox";
            taskBox.Size = new Size(327, 23);
            taskBox.TabIndex = 12;
            // 
            // label1
            // 
            label1.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label1.Location = new Point(421, 76);
            label1.Name = "label1";
            label1.Size = new Size(66, 24);
            label1.TabIndex = 13;
            label1.Text = "Task:";
            // 
            // label2
            // 
            label2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label2.Location = new Point(421, 182);
            label2.Name = "label2";
            label2.Size = new Size(79, 24);
            label2.TabIndex = 14;
            label2.Text = "Due Date:";
            // 
            // previousTasks
            // 
            previousTasks.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            previousTasks.BackgroundColor = Color.PaleTurquoise;
            previousTasks.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            previousTasks.Location = new Point(46, 76);
            previousTasks.Name = "previousTasks";
            previousTasks.RowTemplate.Height = 25;
            previousTasks.Size = new Size(342, 246);
            previousTasks.TabIndex = 15;
            previousTasks.CellContentClick += previousTasks_CellContentClick;
            previousTasks.CellDoubleClick += previousTasks_CellDoubleClick;
            // 
            // loadButton2
            // 
            loadButton2.BackColor = Color.LightSeaGreen;
            loadButton2.FlatAppearance.BorderSize = 0;
            loadButton2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            loadButton2.Location = new Point(46, 378);
            loadButton2.Name = "loadButton2";
            loadButton2.Size = new Size(118, 39);
            loadButton2.TabIndex = 16;
            loadButton2.Text = "Load";
            loadButton2.UseVisualStyleBackColor = false;
            loadButton2.Click += loadButton2_Click;
            // 
            // saveButton2
            // 
            saveButton2.BackColor = Color.LightSeaGreen;
            saveButton2.FlatAppearance.BorderColor = Color.Teal;
            saveButton2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            saveButton2.Location = new Point(628, 378);
            saveButton2.Name = "saveButton2";
            saveButton2.Size = new Size(118, 39);
            saveButton2.TabIndex = 17;
            saveButton2.Text = "Save";
            saveButton2.UseVisualStyleBackColor = false;
            saveButton2.Click += saveButton2_Click;
            // 
            // newButton2
            // 
            newButton2.BackColor = Color.LightSeaGreen;
            newButton2.FlatAppearance.BorderSize = 0;
            newButton2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            newButton2.Location = new Point(240, 378);
            newButton2.Name = "newButton2";
            newButton2.Size = new Size(118, 39);
            newButton2.TabIndex = 18;
            newButton2.Text = "New";
            newButton2.UseVisualStyleBackColor = false;
            newButton2.Click += newButton2_Click;
            // 
            // deleteButton2
            // 
            deleteButton2.BackColor = Color.LightSeaGreen;
            deleteButton2.FlatAppearance.BorderSize = 0;
            deleteButton2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            deleteButton2.Location = new Point(434, 378);
            deleteButton2.Name = "deleteButton2";
            deleteButton2.Size = new Size(118, 39);
            deleteButton2.TabIndex = 19;
            deleteButton2.Text = "Delete";
            deleteButton2.UseVisualStyleBackColor = false;
            deleteButton2.Click += deleteButton2_Click;
            // 
            // TasksForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Azure;
            ClientSize = new Size(800, 450);
            Controls.Add(deleteButton2);
            Controls.Add(newButton2);
            Controls.Add(saveButton2);
            Controls.Add(loadButton2);
            Controls.Add(previousTasks);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(taskBox);
            Controls.Add(dueDate);
            Controls.Add(notesButton);
            Name = "TasksForm";
            Text = "TasksForm";
            Load += TasksForm_Load;
            ((System.ComponentModel.ISupportInitialize)previousTasks).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button notesButton;
        private DateTimePicker dueDate;
        private TextBox taskBox;
        private Label label1;
        private Label label2;
        private DataGridView previousTasks;
        private Button loadButton2;
        private Button saveButton2;
        private Button newButton2;
        private Button deleteButton2;
    }
}