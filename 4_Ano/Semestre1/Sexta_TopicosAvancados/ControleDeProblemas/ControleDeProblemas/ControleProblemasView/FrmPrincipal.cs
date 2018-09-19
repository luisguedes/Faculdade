﻿using System;
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
    public partial class FrmPrincipal : Form
    {
        public FrmPrincipal()
        {
            InitializeComponent();
        }

        private void cadastroTipoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new FrmTipo().Show();
        }

        private void principalToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void cadastroNívelToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new FrmNivel().Show();
        }

        private void cadastroProblemaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new FormProblema().Show();
        }
    }
}
