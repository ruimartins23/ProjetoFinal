namespace frmStillDidntDecide
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
            this.aceitarUtilizadorToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.receitasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.validarReceitaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.introduzirReceitaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ingredientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adicionarIngredientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.validarIngredientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.utilizadoresToolStripMenuItem,
            this.receitasToolStripMenuItem,
            this.ingredientesToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // utilizadoresToolStripMenuItem
            // 
            this.utilizadoresToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aceitarUtilizadorToolStripMenuItem,
            this.aceitarUtilizadorToolStripMenuItem1});
            this.utilizadoresToolStripMenuItem.Name = "utilizadoresToolStripMenuItem";
            this.utilizadoresToolStripMenuItem.Size = new System.Drawing.Size(80, 20);
            this.utilizadoresToolStripMenuItem.Text = "Utilizadores";
            // 
            // aceitarUtilizadorToolStripMenuItem
            // 
            this.aceitarUtilizadorToolStripMenuItem.Name = "aceitarUtilizadorToolStripMenuItem";
            this.aceitarUtilizadorToolStripMenuItem.Size = new System.Drawing.Size(174, 22);
            this.aceitarUtilizadorToolStripMenuItem.Text = "Bloquear Utilizador";
            // 
            // aceitarUtilizadorToolStripMenuItem1
            // 
            this.aceitarUtilizadorToolStripMenuItem1.Name = "aceitarUtilizadorToolStripMenuItem1";
            this.aceitarUtilizadorToolStripMenuItem1.Size = new System.Drawing.Size(174, 22);
            this.aceitarUtilizadorToolStripMenuItem1.Text = "Aceitar Utilizador";
            // 
            // receitasToolStripMenuItem
            // 
            this.receitasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.validarReceitaToolStripMenuItem,
            this.introduzirReceitaToolStripMenuItem});
            this.receitasToolStripMenuItem.Name = "receitasToolStripMenuItem";
            this.receitasToolStripMenuItem.Size = new System.Drawing.Size(62, 20);
            this.receitasToolStripMenuItem.Text = "Receitas";
            // 
            // validarReceitaToolStripMenuItem
            // 
            this.validarReceitaToolStripMenuItem.Name = "validarReceitaToolStripMenuItem";
            this.validarReceitaToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.validarReceitaToolStripMenuItem.Text = "Validar Receita";
            // 
            // introduzirReceitaToolStripMenuItem
            // 
            this.introduzirReceitaToolStripMenuItem.Name = "introduzirReceitaToolStripMenuItem";
            this.introduzirReceitaToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.introduzirReceitaToolStripMenuItem.Text = "Introduzir Receita";
            this.introduzirReceitaToolStripMenuItem.Click += new System.EventHandler(this.introduzirReceitaToolStripMenuItem_Click);
            // 
            // ingredientesToolStripMenuItem
            // 
            this.ingredientesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.adicionarIngredientesToolStripMenuItem,
            this.validarIngredientesToolStripMenuItem});
            this.ingredientesToolStripMenuItem.Name = "ingredientesToolStripMenuItem";
            this.ingredientesToolStripMenuItem.Size = new System.Drawing.Size(84, 20);
            this.ingredientesToolStripMenuItem.Text = "Ingredientes";
            // 
            // adicionarIngredientesToolStripMenuItem
            // 
            this.adicionarIngredientesToolStripMenuItem.Name = "adicionarIngredientesToolStripMenuItem";
            this.adicionarIngredientesToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.adicionarIngredientesToolStripMenuItem.Text = "Adicionar Ingredientes";
            this.adicionarIngredientesToolStripMenuItem.Click += new System.EventHandler(this.adicionarIngredientesToolStripMenuItem_Click);
            // 
            // validarIngredientesToolStripMenuItem
            // 
            this.validarIngredientesToolStripMenuItem.Name = "validarIngredientesToolStripMenuItem";
            this.validarIngredientesToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.validarIngredientesToolStripMenuItem.Text = "Validar Ingredientes";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
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
        private System.Windows.Forms.ToolStripMenuItem aceitarUtilizadorToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem receitasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem validarReceitaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ingredientesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem adicionarIngredientesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem validarIngredientesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem introduzirReceitaToolStripMenuItem;
    }
}

