using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjControler;
using ProjModel;

namespace ProjWeb1
{
    public partial class Monitoramentocad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //gridMonitoramento.DataSource =  new ControlMonitoramento().SelectAll();
            //gridMonitoramento.DataBind();

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            InserirMonitoramento();
            gridMonitoramento.DataSource = new ControlMonitoramento().SelectAll();
            gridMonitoramento.DataBind();
        }

        protected void InserirMonitoramento() {
            Monitoramento moni = new Monitoramento();
            ControlMonitoramento cm = new ControlMonitoramento();
            bool teste;

                moni.nomecliente = txtNomecliente.Text;
                moni.qtdcameras = Convert.ToInt32(txtQtdcamera.Text);
                moni.descricao = txtDescricao.Text;

                if (rblFidelidade.SelectedValue == "1")
                {
                    teste = true;
                }
                else
                {
                    teste = false;
                }

                moni.valorpacote = cm.CalcularValor(teste, Convert.ToInt32(txtQtdcamera.Text), Convert.ToDecimal(txtValor.Text));
                moni.fidelidade = teste;

            if (cm.Insert(moni)) {
                Response.Write("<script>alert('Inserido');</script>");
            }else{
                Response.Write("<script>alert('Não Inserido');</script>");
            }

            
        }

    }
}