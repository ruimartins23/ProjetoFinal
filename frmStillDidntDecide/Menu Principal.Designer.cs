namespace WindowsFormsBackOffice
{
    partial class Form1
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.utilizadoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aceitarUtilizadorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.receitasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.validarReceitaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ingredientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adicionarIngredientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.utilizadoresToolStripMenuItem,
            this.receitasToolStripMenuItem,
            this.ingredientesToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1067, 28);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // utilizadoresToolStripMenuItem
            // 
            this.utilizadoresToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aceitarUtilizadorToolStripMenuItem});
            this.utilizadoresToolStripMenuItem.Name = "utilizadoresToolStripMenuItem";
            this.utilizadoresToolStripMenuItem.Size = new System.Drawing.Size(102, 24);
            this.utilizadoresToolStripMenuItem.Text = "Utilizadores";
            // 
            // aceitarUtilizadorToolStripMenuItem
            // 
            this.aceitarUtilizadorToolStripMenuItem.Name = "aceitarUtilizadorToolStripMenuItem";
            this.aceitarUtilizadorToolStripMenuItem.Size = new System.Drawing.Size(207, 26);
            this.aceitarUtilizadorToolStripMenuItem.Text = "Gerir Utilizadores";
            this.aceitarUtilizadorToolStripMenuItem.Click += new System.EventHandler(this.aceitarUtilizadorToolStripMenuItem_Click);
            // 
            // receitasToolStripMenuItem
            // 
            this.receitasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.validarReceitaToolStripMenuItem});
            this.receitasToolStripMenuItem.Name = "receitasToolStripMenuItem";
            this.receitasToolStripMenuItem.Size = new System.Drawing.Size(78, 24);
            this.receitasToolStripMenuItem.Text = "Receitas";
            // 
            // validarReceitaToolStripMenuItem
            // 
            this.validarReceitaToolStripMenuItem.Name = "validarReceitaToolStripMenuItem";
            this.validarReceitaToolStripMenuItem.Size = new System.Drawing.Size(191, 26);
            this.validarReceitaToolStripMenuItem.Text = "Validar Receita";
            this.validarReceitaToolStripMenuItem.Click += new System.EventHandler(this.validarReceitaToolStripMenuItem_Click);
            // 
            // ingredientesToolStripMenuItem
            // 
            this.ingredientesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.adicionarIngredientesToolStripMenuItem});
            this.ingredientesToolStripMenuItem.Name = "ingredientesToolStripMenuItem";
            this.ingredientesToolStripMenuItem.Size = new System.Drawing.Size(105, 24);
            this.ingredientesToolStripMenuItem.Text = "Ingredientes";
            // 
            // adicionarIngredientesToolStripMenuItem
            // 
            this.adicionarIngredientesToolStripMenuItem.Name = "adicionarIngredientesToolStripMenuItem";
            this.adicionarIngredientesToolStripMenuItem.Size = new System.Drawing.Size(242, 26);
            this.adicionarIngredientesToolStripMenuItem.Text = "Adicionar Ingredientes";
            this.adicionarIngredientesToolStripMenuItem.Click += new System.EventHandler(this.adicionarIngredientesToolStripMenuItem_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1067, 554);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Form1";
            this.Text = "Form1";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem utilizadoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aceitarUtilizadorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem receitasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem validarReceitaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ingredientesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem adicionarIngredientesToolStripMenuItem;
    }
}

