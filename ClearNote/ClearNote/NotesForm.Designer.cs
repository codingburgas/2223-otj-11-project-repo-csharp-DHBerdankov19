namespace ClearNote
{
    partial class NotesForm
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
            loadButton = new Button();
            newButton = new Button();
            deleteButton = new Button();
            saveButton = new Button();
            label1 = new Label();
            label2 = new Label();
            titleBox = new TextBox();
            noteBox = new TextBox();
            tasksButton = new Button();
            previousNotes = new DataGridView();
            ((System.ComponentModel.ISupportInitialize)previousNotes).BeginInit();
            SuspendLayout();
            // 
            // loadButton
            // 
            loadButton.BackColor = Color.LightSeaGreen;
            loadButton.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            loadButton.Location = new Point(46, 374);
            loadButton.Name = "loadButton";
            loadButton.Size = new Size(118, 39);
            loadButton.TabIndex = 0;
            loadButton.Text = "Load";
            loadButton.UseVisualStyleBackColor = false;
            loadButton.Click += loadButton_Click;
            // 
            // newButton
            // 
            newButton.BackColor = Color.LightSeaGreen;
            newButton.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            newButton.Location = new Point(241, 374);
            newButton.Name = "newButton";
            newButton.Size = new Size(118, 39);
            newButton.TabIndex = 1;
            newButton.Text = "New";
            newButton.UseVisualStyleBackColor = false;
            newButton.Click += newButton_Click;
            // 
            // deleteButton
            // 
            deleteButton.BackColor = Color.LightSeaGreen;
            deleteButton.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            deleteButton.Location = new Point(436, 374);
            deleteButton.Name = "deleteButton";
            deleteButton.Size = new Size(118, 39);
            deleteButton.TabIndex = 2;
            deleteButton.Text = "Delete";
            deleteButton.UseVisualStyleBackColor = false;
            deleteButton.Click += deleteButton_Click;
            // 
            // saveButton
            // 
            saveButton.BackColor = Color.LightSeaGreen;
            saveButton.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            saveButton.Location = new Point(631, 374);
            saveButton.Name = "saveButton";
            saveButton.Size = new Size(118, 39);
            saveButton.TabIndex = 3;
            saveButton.Text = "Save";
            saveButton.UseVisualStyleBackColor = false;
            saveButton.Click += saveButton_Click;
            // 
            // label1
            // 
            label1.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label1.Location = new Point(411, 74);
            label1.Name = "label1";
            label1.Size = new Size(66, 24);
            label1.TabIndex = 4;
            label1.Text = "Title:";
            // 
            // label2
            // 
            label2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label2.Location = new Point(411, 140);
            label2.Name = "label2";
            label2.Size = new Size(66, 25);
            label2.TabIndex = 5;
            label2.Text = "Note:";
            // 
            // titleBox
            // 
            titleBox.BackColor = Color.LightCyan;
            titleBox.Location = new Point(411, 101);
            titleBox.Name = "titleBox";
            titleBox.Size = new Size(340, 23);
            titleBox.TabIndex = 6;
            // 
            // noteBox
            // 
            noteBox.BackColor = Color.LightCyan;
            noteBox.Location = new Point(411, 168);
            noteBox.Multiline = true;
            noteBox.Name = "noteBox";
            noteBox.Size = new Size(340, 156);
            noteBox.TabIndex = 7;
            // 
            // tasksButton
            // 
            tasksButton.BackColor = Color.LightSeaGreen;
            tasksButton.Font = new Font("Segoe UI", 14.25F, FontStyle.Regular, GraphicsUnit.Point);
            tasksButton.Location = new Point(12, 12);
            tasksButton.Name = "tasksButton";
            tasksButton.Size = new Size(99, 36);
            tasksButton.TabIndex = 8;
            tasksButton.Text = "Tasks";
            tasksButton.UseVisualStyleBackColor = false;
            tasksButton.Click += tasksButton_Click;
            // 
            // previousNotes
            // 
            previousNotes.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            previousNotes.BackgroundColor = Color.PaleTurquoise;
            previousNotes.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            previousNotes.Location = new Point(46, 74);
            previousNotes.Name = "previousNotes";
            previousNotes.RowTemplate.Height = 25;
            previousNotes.Size = new Size(342, 250);
            previousNotes.TabIndex = 9;
            previousNotes.CellDoubleClick += previousNotes_CellDoubleClick;
            // 
            // NotesForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Azure;
            ClientSize = new Size(800, 450);
            Controls.Add(previousNotes);
            Controls.Add(tasksButton);
            Controls.Add(noteBox);
            Controls.Add(titleBox);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(saveButton);
            Controls.Add(deleteButton);
            Controls.Add(newButton);
            Controls.Add(loadButton);
            Name = "NotesForm";
            Text = "NotesForm";
            Load += NotesForm_Load;
            ((System.ComponentModel.ISupportInitialize)previousNotes).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button loadButton;
        private Button newButton;
        private Button deleteButton;
        private Button saveButton;
        private Label label1;
        private Label label2;
        private TextBox titleBox;
        private TextBox noteBox;
        private Button tasksButton;
        private DataGridView previousNotes;
    }
}