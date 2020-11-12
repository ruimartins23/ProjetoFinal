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
    public partial class Introduzir_Ingrediente : Form
    {
        public Introduzir_Ingrediente()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Ingredientes ingrediente = new Ingredientes();
            ingrediente.Nome = (ingTxt.Text);
            ingrediente.Quantidade = int.Parse(textBox1.Text);
            MessageBox.Show("Ingrediente Adicionado!");
        }
    }
}
