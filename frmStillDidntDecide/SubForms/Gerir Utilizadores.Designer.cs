namespace WindowsFormsBackOffice
{
    partial class Gerir_Utilizadores
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
            this.components = new System.ComponentModel.Container();
            this.button1 = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.utilizadoridDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nomeUserDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.emailDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.birthDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isRegistedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.isAdminDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.accountIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.membershipUserNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isBlockedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.utilizadorBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.rM_SiteReceitasDataSet2 = new ProjetoFinal.WinForms.RM_SiteReceitasDataSet2();
            this.utilizadorTableAdapter = new ProjetoFinal.WinForms.RM_SiteReceitasDataSet2TableAdapters.UtilizadorTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.utilizadorBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rM_SiteReceitasDataSet2)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(1385, 70);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 1;
            this.button1.Text = "Gravar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.utilizadoridDataGridViewTextBoxColumn,
            this.nomeUserDataGridViewTextBoxColumn,
            this.emailDataGridViewTextBoxColumn,
            this.birthDateDataGridViewTextBoxColumn,
            this.isRegistedDataGridViewCheckBoxColumn,
            this.isAdminDataGridViewCheckBoxColumn,
            this.accountIdDataGridViewTextBoxColumn,
            this.membershipUserNameDataGridViewTextBoxColumn,
            this.isBlockedDataGridViewCheckBoxColumn});
            this.dataGridView1.DataSource = this.utilizadorBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(0, 0);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(1379, 584);
            this.dataGridView1.TabIndex = 2;
            // 
            // utilizadoridDataGridViewTextBoxColumn
            // 
            this.utilizadoridDataGridViewTextBoxColumn.DataPropertyName = "Utilizador_id";
            this.utilizadoridDataGridViewTextBoxColumn.HeaderText = "Utilizador_id";
            this.utilizadoridDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.utilizadoridDataGridViewTextBoxColumn.Name = "utilizadoridDataGridViewTextBoxColumn";
            this.utilizadoridDataGridViewTextBoxColumn.ReadOnly = true;
            this.utilizadoridDataGridViewTextBoxColumn.Width = 125;
            // 
            // nomeUserDataGridViewTextBoxColumn
            // 
            this.nomeUserDataGridViewTextBoxColumn.DataPropertyName = "NomeUser";
            this.nomeUserDataGridViewTextBoxColumn.HeaderText = "NomeUser";
            this.nomeUserDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.nomeUserDataGridViewTextBoxColumn.Name = "nomeUserDataGridViewTextBoxColumn";
            this.nomeUserDataGridViewTextBoxColumn.Width = 125;
            // 
            // emailDataGridViewTextBoxColumn
            // 
            this.emailDataGridViewTextBoxColumn.DataPropertyName = "Email";
            this.emailDataGridViewTextBoxColumn.HeaderText = "Email";
            this.emailDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.emailDataGridViewTextBoxColumn.Name = "emailDataGridViewTextBoxColumn";
            this.emailDataGridViewTextBoxColumn.Width = 125;
            // 
            // birthDateDataGridViewTextBoxColumn
            // 
            this.birthDateDataGridViewTextBoxColumn.DataPropertyName = "BirthDate";
            this.birthDateDataGridViewTextBoxColumn.HeaderText = "BirthDate";
            this.birthDateDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.birthDateDataGridViewTextBoxColumn.Name = "birthDateDataGridViewTextBoxColumn";
            this.birthDateDataGridViewTextBoxColumn.Width = 125;
            // 
            // isRegistedDataGridViewCheckBoxColumn
            // 
            this.isRegistedDataGridViewCheckBoxColumn.DataPropertyName = "IsRegisted";
            this.isRegistedDataGridViewCheckBoxColumn.HeaderText = "IsRegisted";
            this.isRegistedDataGridViewCheckBoxColumn.MinimumWidth = 6;
            this.isRegistedDataGridViewCheckBoxColumn.Name = "isRegistedDataGridViewCheckBoxColumn";
            this.isRegistedDataGridViewCheckBoxColumn.Width = 125;
            // 
            // isAdminDataGridViewCheckBoxColumn
            // 
            this.isAdminDataGridViewCheckBoxColumn.DataPropertyName = "IsAdmin";
            this.isAdminDataGridViewCheckBoxColumn.HeaderText = "IsAdmin";
            this.isAdminDataGridViewCheckBoxColumn.MinimumWidth = 6;
            this.isAdminDataGridViewCheckBoxColumn.Name = "isAdminDataGridViewCheckBoxColumn";
            this.isAdminDataGridViewCheckBoxColumn.Width = 125;
            // 
            // accountIdDataGridViewTextBoxColumn
            // 
            this.accountIdDataGridViewTextBoxColumn.DataPropertyName = "Account_Id";
            this.accountIdDataGridViewTextBoxColumn.HeaderText = "Account_Id";
            this.accountIdDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.accountIdDataGridViewTextBoxColumn.Name = "accountIdDataGridViewTextBoxColumn";
            this.accountIdDataGridViewTextBoxColumn.Width = 125;
            // 
            // membershipUserNameDataGridViewTextBoxColumn
            // 
            this.membershipUserNameDataGridViewTextBoxColumn.DataPropertyName = "MembershipUserName";
            this.membershipUserNameDataGridViewTextBoxColumn.HeaderText = "MembershipUserName";
            this.membershipUserNameDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.membershipUserNameDataGridViewTextBoxColumn.Name = "membershipUserNameDataGridViewTextBoxColumn";
            this.membershipUserNameDataGridViewTextBoxColumn.Width = 125;
            // 
            // isBlockedDataGridViewCheckBoxColumn
            // 
            this.isBlockedDataGridViewCheckBoxColumn.DataPropertyName = "IsBlocked";
            this.isBlockedDataGridViewCheckBoxColumn.HeaderText = "IsBlocked";
            this.isBlockedDataGridViewCheckBoxColumn.MinimumWidth = 6;
            this.isBlockedDataGridViewCheckBoxColumn.Name = "isBlockedDataGridViewCheckBoxColumn";
            this.isBlockedDataGridViewCheckBoxColumn.Width = 125;
            // 
            // utilizadorBindingSource
            // 
            this.utilizadorBindingSource.DataMember = "Utilizador";
            this.utilizadorBindingSource.DataSource = this.rM_SiteReceitasDataSet2;
            // 
            // rM_SiteReceitasDataSet2
            // 
            this.rM_SiteReceitasDataSet2.DataSetName = "RM_SiteReceitasDataSet2";
            this.rM_SiteReceitasDataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // utilizadorTableAdapter
            // 
            this.utilizadorTableAdapter.ClearBeforeFill = true;
            // 
            // Gerir_Utilizadores
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1465, 584);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.button1);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Gerir_Utilizadores";
            this.Text = "Gerir Utilizadores";
            this.Load += new System.EventHandler(this.Gerir_Utilizadores_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.utilizadorBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rM_SiteReceitasDataSet2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private ProjetoFinal.WinForms.RM_SiteReceitasDataSet2 rM_SiteReceitasDataSet2;
        private System.Windows.Forms.BindingSource utilizadorBindingSource;
        private ProjetoFinal.WinForms.RM_SiteReceitasDataSet2TableAdapters.UtilizadorTableAdapter utilizadorTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn utilizadoridDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nomeUserDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn emailDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn birthDateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isRegistedDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isAdminDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn accountIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn membershipUserNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isBlockedDataGridViewCheckBoxColumn;
    }
}