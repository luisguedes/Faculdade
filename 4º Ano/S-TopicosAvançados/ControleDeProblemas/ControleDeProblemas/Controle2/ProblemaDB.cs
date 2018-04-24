using Controle;
using Entidade;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controle2
{
    public class ProblemaDB
    {
        private DB db;

        public bool insert(Problema problema)
        {
            try
            {
                string sql = "INSERT INTO TB_PROBLEMA (DESCRICAO, DATACRIACAO, TIPO, NIVEL)" + 
                             " VALUES ('" + problema.Descricao + "', '" + problema.DataCriacao + "', '" + problema.Tipo.Id + "', '" + problema.NivelDificuldade.Id + "' )";
                using (db = new DB())
                {
                    db.ExecutaComando(sql);
                }
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }

        public List<Problema> ListarProblema()
        {
            using (db = new DB())
            {
                var sql = "SELECT Prob.descricao, Prob.datacriacao, Tipo.ID, Nivel.ID FROM TB_PROBLEMA Prob, TB_NIVEL Nivel, TB_TIPO Tipo WHERE Prob.TIPO = Tipo.ID AND Prob.NIVEL = Nivel.ID";
                var retorno = db.ExecutaComandoRetorno(sql);
                return TransformaSQLReaderEmList(retorno);
            }
        }

        private List<Problema> TransformaSQLReaderEmList(SqlDataReader retorno)
        {
            var listProblema = new List<Problema>();

            while (retorno.Read())
            {
                var item = new Problema()
                {
                    Id = Convert.ToInt32(retorno["id"]),
                    Descricao = retorno["descricao"].ToString(),
                    DataCriacao = Convert.ToDateTime(retorno["datacriacao"].ToString()),
                    Tipo = new Tipo() { Id = Convert.ToInt32(retorno["id"].ToString()) } ,
                    NivelDificuldade = new Nivel() { Id = Convert.ToInt32(retorno["id"].ToString()) },
                };

                listProblema.Add(item);
            }
            return listProblema;
        }
    }
}
