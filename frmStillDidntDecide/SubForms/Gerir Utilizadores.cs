using ClassLibrary;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsBackOffice
{
    public partial class Gerir_Utilizadores : Form
    {
        public Gerir_Utilizadores()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void Gerir_Utilizadores_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'rM_SiteReceitasDataSet2.Utilizador' table. You can move, or remove it, as needed.
            this.utilizadorTableAdapter.Fill(this.rM_SiteReceitasDataSet2.Utilizador);


        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Queres atualizar as alterações?", "Aviso", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Information);
            if (dr == DialogResult.Yes)
            {
                this.utilizadorTableAdapter.Update(rM_SiteReceitasDataSet2.Utilizador);
                dataGridView1.Refresh();
                MessageBox.Show("DB atualizada");
            }
        }

    
    }
}
