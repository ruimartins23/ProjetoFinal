using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;
using ProjetoFinal.Services.Services;
using static ClassLibrary.Receita;

namespace ProjetoFinal.WebForms
{
    public partial class InsertReceita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Receita recipe = new Receita();
            ReceitaServices recServ = new ReceitaServices();
            recipe.Nome = nameTxt.Text;
            recipe.Descricao = descTxt.Text;
            recipe.Duracao = durTxt.Text;
            recipe._dificuldade = (Dificuldade)int.Parse(DropDownList1.SelectedValue);
            recipe.Validado = false;
            foreach (object item in ListBox1.SelectedValue)
            {
                Ingrediente ing = (Ingrediente)item;
                recipe.Ingredientes.Add(ing);
            }

            recServ.Add(recipe);

            
        }
    }
}