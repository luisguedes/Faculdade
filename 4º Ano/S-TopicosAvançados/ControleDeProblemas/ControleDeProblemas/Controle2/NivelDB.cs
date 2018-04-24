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
    public class NivelDB
    {
        private DB db;

        public bool insert(Nivel nivel)
        {
            try
            {
                string sql = "INSERT INTO TB_NIVEL (DESCRICAO)" +
                         " VALUES ('" + nivel.Descricao + "')";
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

        public List<Nivel> ListarNivel()
        {
            using (db = new DB())
            {
                var sql = "SELECT id, descricao FROM TB_NIVEL";
                var retorno = db.ExecutaComandoRetorno(sql);
                return TransformaSQLReaderEmList(retorno);
            }
        }

        private List<Nivel> TransformaSQLReaderEmList(SqlDataReader retorno)
        {
            var listnivel = new List<Nivel>();

            while (retorno.Read())
            {
                var item = new Nivel()
                {
                    Id = Convert.ToInt32(retorno["id"]),
                    Descricao = retorno["descricao"].ToString(),
                };

                listnivel.Add(item);
            }
            return listnivel;
        }


    }
}
