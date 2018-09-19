using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjWebWCF1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ServiceReference1.EntTesteCadastro objCliente = new ServiceReference1.EntTesteCadastro();
            objCliente.Nome = TextBox1.Text;
            ServiceReference1.ServicoClient wcf = new ServiceReference1.ServicoClient();
            GridView1.DataSource = wcf.Consultar(TextBox1.Text);
            GridView1.DataBind();
        }
    }
}