using ClassLibrary;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsBackOffice
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        private void adicionarIngredientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var m = new Introduzir_Ingrediente();
            m.Show();
        }

        private void aceitarUtilizadorToolStripMenuItem1_Click(object sender, EventArgs e)
        {

        }

        private void aceitarUtilizadorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var m = new Gerir_Utilizadores();
            m.Show();           
        }

        private void validarReceitaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var m = new Validar_Receita();
            m.Show();
        }
    }
}
