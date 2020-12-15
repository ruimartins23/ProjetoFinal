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
    public partial class Validar_Receita : Form
    {
        public Validar_Receita()
        {
            InitializeComponent();
        }

        private void Validar_Receita_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'rM_SiteReceitasDataSet1.Receita' table. You can move, or remove it, as needed.
            this.receitaTableAdapter.Fill(this.rM_SiteReceitasDataSet1.Receita);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Quer guardar as alterações?", "Message", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Information);
            if (dr == DialogResult.Yes)
            {
                this.receitaTableAdapter.Update(rM_SiteReceitasDataSet1.Receita);
                dataGridView1.Refresh();
                MessageBox.Show("Gravado!");
            }
        }
    }
}
