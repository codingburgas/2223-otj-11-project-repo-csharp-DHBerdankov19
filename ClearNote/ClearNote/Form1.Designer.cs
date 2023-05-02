namespace ClearNote
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label_welcome = new Label();
            label_email = new Label();
            label_password = new Label();
            text_email = new TextBox();
            text_password = new TextBox();
            button_login = new Button();
            button_clear = new Button();
            button_exit = new Button();
            SuspendLayout();
            // 
            // label_welcome
            // 
            label_welcome.AutoSize = true;
            label_welcome.Font = new Font("Baskerville Old Face", 36F, FontStyle.Regular, GraphicsUnit.Point);
            label_welcome.Location = new Point(377, 74);
            label_welcome.Name = "label_welcome";
            label_welcome.Size = new Size(212, 54);
            label_welcome.TabIndex = 0;
            label_welcome.Text = "Welcome";
            // 
            // label_email
            // 
            label_email.AutoSize = true;
            label_email.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label_email.Location = new Point(341, 165);
            label_email.Name = "label_email";
            label_email.Size = new Size(48, 21);
            label_email.TabIndex = 1;
            label_email.Text = "Email";
            // 
            // label_password
            // 
            label_password.AutoSize = true;
            label_password.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label_password.Location = new Point(340, 211);
            label_password.Name = "label_password";
            label_password.Size = new Size(76, 21);
            label_password.TabIndex = 2;
            label_password.Text = "Password";
            // 
            // text_email
            // 
            text_email.Location = new Point(438, 167);
            text_email.Name = "text_email";
            text_email.Size = new Size(182, 23);
            text_email.TabIndex = 3;
            // 
            // text_password
            // 
            text_password.Location = new Point(438, 211);
            text_password.Name = "text_password";
            text_password.Size = new Size(182, 23);
            text_password.TabIndex = 4;
            // 
            // button_login
            // 
            button_login.Location = new Point(545, 257);
            button_login.Name = "button_login";
            button_login.Size = new Size(75, 25);
            button_login.TabIndex = 5;
            button_login.Text = "Login";
            button_login.UseVisualStyleBackColor = true;
            button_login.Click += button_login_Click;
            // 
            // button_clear
            // 
            button_clear.Location = new Point(438, 257);
            button_clear.Name = "button_clear";
            button_clear.Size = new Size(75, 25);
            button_clear.TabIndex = 6;
            button_clear.Text = "Clear";
            button_clear.UseVisualStyleBackColor = true;
            button_clear.Click += button_clear_Click;
            // 
            // button_exit
            // 
            button_exit.Location = new Point(341, 298);
            button_exit.Name = "button_exit";
            button_exit.Size = new Size(75, 26);
            button_exit.TabIndex = 7;
            button_exit.Text = "Exit";
            button_exit.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(923, 520);
            Controls.Add(button_exit);
            Controls.Add(button_clear);
            Controls.Add(button_login);
            Controls.Add(text_password);
            Controls.Add(text_email);
            Controls.Add(label_password);
            Controls.Add(label_email);
            Controls.Add(label_welcome);
            Name = "Form1";
            Text = "Login";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label_welcome;
        private Label label_email;
        private Label label_password;
        private TextBox text_email;
        private TextBox text_password;
        private Button button_login;
        private Button button_clear;
        private Button button_exit;
    }
}