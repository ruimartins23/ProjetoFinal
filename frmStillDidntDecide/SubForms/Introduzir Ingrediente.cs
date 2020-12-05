using ClassLibrary;
using ProjetoFinal.Services.Services;
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
            Ingrediente ing = new Ingrediente();
            IngredientesServices ingServ = new IngredientesServices();

            if (ingTxt.Text != "" && qntyTxt.Text != "")
            {
                ing.Produto = ingTxt.Text.Trim();
                ing.Unidade = qntyTxt.Text.Trim();
                ingServ.Add(ing);
                MessageBox.Show("Ingrediente Adicionado!", "Ingrediente Adicionado!");
            }
            else if (ingTxt.Text == "" || qntyTxt.Text == "")
                MessageBox.Show("Preencha as caixas de texto.", "Erro");

        }
    }
    
}
