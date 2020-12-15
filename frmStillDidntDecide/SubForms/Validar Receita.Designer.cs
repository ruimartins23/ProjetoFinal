namespace WindowsFormsBackOffice
{
    partial class Validar_Receita
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.rM_SiteReceitasDataSet1 = new ProjetoFinal.WinForms.RM_SiteReceitasDataSet1();
            this.receitaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.receitaTableAdapter = new ProjetoFinal.WinForms.RM_SiteReceitasDataSet1TableAdapters.ReceitaTableAdapter();
            this.receitaidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nomeRecDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isValidatedDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rM_SiteReceitasDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.receitaBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.receitaidDataGridViewTextBoxColumn,
            this.nomeRecDataGridViewTextBoxColumn,
            this.isValidatedDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.receitaBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(6, 2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(893, 488);
            this.dataGridView1.TabIndex = 0;
            // 
            // rM_SiteReceitasDataSet1
            // 
            this.rM_SiteReceitasDataSet1.DataSetName = "RM_SiteReceitasDataSet1";
            this.rM_SiteReceitasDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // receitaBindingSource
            // 
            this.receitaBindingSource.DataMember = "Receita";
            this.receitaBindingSource.DataSource = this.rM_SiteReceitasDataSet1;
            // 
            // receitaTableAdapter
            // 
            this.receitaTableAdapter.ClearBeforeFill = true;
            // 
            // receitaidDataGridViewTextBoxColumn
            // 
            this.receitaidDataGridViewTextBoxColumn.DataPropertyName = "Receita_id";
            this.receitaidDataGridViewTextBoxColumn.HeaderText = "Receita_id";
            this.receitaidDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.receitaidDataGridViewTextBoxColumn.Name = "receitaidDataGridViewTextBoxColumn";
            this.receitaidDataGridViewTextBoxColumn.ReadOnly = true;
            this.receitaidDataGridViewTextBoxColumn.Width = 125;
            // 
            // nomeRecDataGridViewTextBoxColumn
            // 
            this.nomeRecDataGridViewTextBoxColumn.DataPropertyName = "NomeRec";
            this.nomeRecDataGridViewTextBoxColumn.HeaderText = "NomeRec";
            this.nomeRecDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.nomeRecDataGridViewTextBoxColumn.Name = "nomeRecDataGridViewTextBoxColumn";
            this.nomeRecDataGridViewTextBoxColumn.Width = 125;
            // 
            // isValidatedDataGridViewTextBoxColumn
            // 
            this.isValidatedDataGridViewTextBoxColumn.DataPropertyName = "IsValidated";
            this.isValidatedDataGridViewTextBoxColumn.HeaderText = "IsValidated";
            this.isValidatedDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.isValidatedDataGridViewTextBoxColumn.Name = "isValidatedDataGridViewTextBoxColumn";
            this.isValidatedDataGridViewTextBoxColumn.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.isValidatedDataGridViewTextBoxColumn.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.isValidatedDataGridViewTextBoxColumn.Width = 125;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(920, 44);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 1;
            this.button1.Text = "Gravar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Validar_Receita
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1013, 488);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Validar_Receita";
            this.Text = "Validar_Receita";
            this.Load += new System.EventHandler(this.Validar_Receita_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rM_SiteReceitasDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.receitaBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private ProjetoFinal.WinForms.RM_SiteReceitasDataSet1 rM_SiteReceitasDataSet1;
        private System.Windows.Forms.BindingSource receitaBindingSource;
        private ProjetoFinal.WinForms.RM_SiteReceitasDataSet1TableAdapters.ReceitaTableAdapter receitaTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn receitaidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nomeRecDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isValidatedDataGridViewTextBoxColumn;
        private System.Windows.Forms.Button button1;
    }
}