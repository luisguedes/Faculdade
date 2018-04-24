using Controle2;
using Entidade;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ControleProblemasView
{
    public partial class FormProblema : Form
    {
        public FormProblema()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void FormProblema_Load(object sender, EventArgs e)
        {
            CarregarGrid();
            cboNivel.DataSource = new NivelDB().ListarNivel();
            //cboTipo.DisplayMember = "descricao";
            cboNivel.ValueMember = "id";

            cboTipo.DataSource = new TipoDB().ListarTipo();
            //cboNivel.DisplayMember = "descrição";
            cboTipo.ValueMember = "id";
           
            dgProblema.DataSource = new ProblemaDB().ListarProblema();
        }

        private void CarregaComboTipo()
        {
            cboTipo.DataSource = new TipoDB().ListarTipo();
           // cboTipo.DisplayMember = "descricao";
            cboTipo.ValueMember = "id";
        }

        private void CarregaComboNivel()
        {
            cboNivel.DataSource = new NivelDB().ListarNivel();
            // cboTipo.DisplayMember = "descricao";
            cboNivel.ValueMember = "id";
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            Problema prob = new Problema();
 
            prob.Descricao = txtDescricao.Text;
            prob.DataCriacao = Convert.ToDateTime(txtData.Text);
            prob.Tipo = new Tipo() { Id = Convert.ToInt32(cboTipo.SelectedValue) }; // Descricao = cboTipo.SelectedItem.ToString()
            prob.NivelDificuldade = new Nivel() { Id = Convert.ToInt32(cboNivel.SelectedValue) }; // Descricao = cboNivel.SelectedItem.ToString()


            
            if (new ProblemaDB().insert(prob))
            {
                MessageBox.Show("Registro inserido!");
                txtDescricao.Text = "";
                txtData.Text = "";
                cboTipo.SelectedItem = 0;
                cboNivel.SelectedItem = 0;
                CarregarGrid();
            }
            else
            {
                MessageBox.Show("Erro ao inserir registro!");
            }
        }

        private void CarregarGrid()
        {
            dgProblema.DataSource = new ProblemaDB().ListarProblema();
        }

        private void dgProblema_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }
    }
}

