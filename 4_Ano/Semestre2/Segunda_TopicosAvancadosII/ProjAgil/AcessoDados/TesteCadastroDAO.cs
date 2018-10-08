using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace AcessoDados
{
    public class TesteCadastroDAO
    {
        private BD bd = null;

        public List<EntTesteCadastro> BuscarCadastro(EntTesteCadastro cadastro)
        {
            if (cadastro != null)
            {
                bd = new BD();
                StringBuilder sql = new StringBuilder();
                DataSet ds = null;
                List<EntTesteCadastro> lstCadastro = new List<EntTesteCadastro>();

                SqlCommand scomand = new SqlCommand();

                scomand.CommandType = CommandType.StoredProcedure;
                scomand.CommandText = "DBO.PR_SELECT_LAB";
                scomand.Parameters.Add(new SqlParameter("@NOME", cadastro.Nome));

                ds = bd.ExecutarProcedureConsulta(scomand);

                foreach (DataRow linha in ds.Tables[0].Rows)
                {

                    EntTesteCadastro a = new EntTesteCadastro();

                    a.Codigo = Convert.ToInt32(linha["ID"]);
                    a.Nome = linha["NOME"].ToString();
                    a.QtdComputadores = Convert.ToInt32(linha["QuantidadeComputadores"]);
                    a.QtdAluno = Convert.ToInt32(linha["QuantidadeAlunos"]);
                    //a.Projetor = BitConverter.(linha["Projetor"]);
                    a.Software1 = linha["SOFTWARE1"].ToString();
                    a.Software2 = linha["SOFTWARE2"].ToString();
                    a.Software3 = linha["SOFTWARE3"].ToString();
                    a.SistemaOperacional = linha["SistemaOperacional"].ToString(); ;

                    lstCadastro.Add(a);
                }
                return lstCadastro;
            }
            else
            {
                return null;
            }
        }
    }
}