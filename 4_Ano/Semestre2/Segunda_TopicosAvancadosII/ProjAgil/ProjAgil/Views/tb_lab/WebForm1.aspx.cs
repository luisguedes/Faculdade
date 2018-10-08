using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjAgil.Views.tb_lab
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference.EntTesteCadastro objCliente = new ServiceReference.EntTesteCadastro();
            objCliente.Nome = TextBox.Text;
            ServiceReference.ServicoClient wcf = new ServiceReference.ServicoClient();
            GridView.DataSource = wcf.Consultar(TextBox.Text);
            GridView.DataBind();
        }
    }
}