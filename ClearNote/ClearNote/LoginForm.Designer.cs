namespace ClearNote
{
    partial class LoginForm
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
            label_welcome.Font = new Font("Harlow Solid Italic", 36F, FontStyle.Italic, GraphicsUnit.Point);
            label_welcome.Location = new Point(376, 72);
            label_welcome.Name = "label_welcome";
            label_welcome.Size = new Size(207, 61);
            label_welcome.TabIndex = 0;
            label_welcome.Text = "Welcome";
            // 
            // label_email
            // 
            label_email.AutoSize = true;
            label_email.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label_email.Location = new Point(336, 160);
            label_email.Name = "label_email";
            label_email.Size = new Size(48, 21);
            label_email.TabIndex = 1;
            label_email.Text = "Email";
            // 
            // label_password
            // 
            label_password.AutoSize = true;
            label_password.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            label_password.Location = new Point(336, 208);
            label_password.Name = "label_password";
            label_password.Size = new Size(76, 21);
            label_password.TabIndex = 2;
            label_password.Text = "Password";
            // 
            // text_email
            // 
            text_email.BackColor = Color.LightCyan;
            text_email.Location = new Point(432, 160);
            text_email.Name = "text_email";
            text_email.Size = new Size(184, 23);
            text_email.TabIndex = 3;
            // 
            // text_password
            // 
            text_password.BackColor = Color.LightCyan;
            text_password.Location = new Point(432, 208);
            text_password.Name = "text_password";
            text_password.Size = new Size(184, 23);
            text_password.TabIndex = 4;
            // 
            // button_login
            // 
            button_login.BackColor = Color.LightSeaGreen;
            button_login.Location = new Point(544, 256);
            button_login.Name = "button_login";
            button_login.Size = new Size(72, 24);
            button_login.TabIndex = 5;
            button_login.Text = "Login";
            button_login.UseVisualStyleBackColor = false;
            button_login.Click += button_login_Click;
            // 
            // button_clear
            // 
            button_clear.BackColor = Color.LightSeaGreen;
            button_clear.Location = new Point(432, 256);
            button_clear.Name = "button_clear";
            button_clear.Size = new Size(72, 24);
            button_clear.TabIndex = 6;
            button_clear.Text = "Clear";
            button_clear.UseVisualStyleBackColor = false;
            button_clear.Click += button_clear_Click;
            // 
            // button_exit
            // 
            button_exit.BackColor = Color.LightSeaGreen;
            button_exit.Location = new Point(336, 296);
            button_exit.Name = "button_exit";
            button_exit.Size = new Size(72, 24);
            button_exit.TabIndex = 7;
            button_exit.Text = "Exit";
            button_exit.UseVisualStyleBackColor = false;
            button_exit.Click += button_exit_Click;
            // 
            // LoginForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.Azure;
            ClientSize = new Size(923, 520);
            Controls.Add(button_exit);
            Controls.Add(button_clear);
            Controls.Add(button_login);
            Controls.Add(text_password);
            Controls.Add(text_email);
            Controls.Add(label_password);
            Controls.Add(label_email);
            Controls.Add(label_welcome);
            Name = "LoginForm";
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