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

namespace frmStillDidntDecide
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void introduzirReceitaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var m = new Introduzir_Receita();
            m.Show();
        }

        private void adicionarIngredientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var m = new Introduzir_Ingrediente();
            m.Show();
        }
    }
}
