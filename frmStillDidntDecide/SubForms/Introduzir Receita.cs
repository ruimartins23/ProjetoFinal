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
    public partial class Introduzir_Receita : Form
    {
        public Introduzir_Receita()
        {
            InitializeComponent();
            Ingrediente ing = new Ingrediente();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            
        }

        private void Introduzir_Receita_Load(object sender, EventArgs e)
        {
            IngredientesServices ingServ = new IngredientesServices();
            List<string> nomesIng = new List<string>();
            foreach (var item in ingServ.GetAll())
            {
                nomesIng.Add(item.Produto);
            }
            listBox1.DataSource = nomesIng;

            List<string> qntIng = new List<string>();
            foreach (var item in ingServ.GetAll())
            {
                qntIng.Add(item.Unidade);
            }
            listBox2.DataSource = qntIng;
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }
    }
}
