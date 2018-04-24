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
    public partial class FrmNivel : Form
    {
        public FrmNivel()
        {
            InitializeComponent();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            Nivel nivel = new Nivel();
            nivel.Id = Convert.ToInt32(txtId.Text);
            nivel.Descricao = txtDescricao.Text;

            //MessageBox.Show("Olá turma!" + tipo);

            if (new NivelDB().insert(nivel))
            {
                MessageBox.Show("Registro inserido!");
            }
            else
            {
                MessageBox.Show("Erro ao inserir registro!");
            }
        }

        private void dgTipo_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void FrmNivel_Load(object sender, EventArgs e)
        {
            dgNivel.DataSource = new NivelDB().ListarNivel();
        }

        private void txtId_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
