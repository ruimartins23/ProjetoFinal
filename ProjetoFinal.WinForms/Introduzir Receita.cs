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
    public partial class Introduzir_Receita : Form
    {
        public Introduzir_Receita()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Receita receita = new Receita();
            receita.Nome = textBox1.Text;
            receita.Descricao = textBox5.Text;
            receita.Categoria = comboBox1.SelectedItem.ToString();
            receita.Dificuldade = comboBox2.SelectedItem.ToString();
            receita.Duracao = textBox2.Text;
            //receita.IngReceita.Add(richTextBox1.Text);

        }
    }
}
