using ProjModel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjController
{
    public class ControllerMensagem
    {

        //ConnectionSQLServer conexao;
        SqlConnection con;

        public ControllerMensagem()
        {
            con = new SqlConnection
                (ConfigurationManager.ConnectionStrings["ConexaoSQLServer"].
                ConnectionString);
            //con.Open();
        }

        public bool Insert(Mensagem msg)
        {
            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "DBO.up_InsertDescricao";
            cmd.Parameters.Add(new SqlParameter
                ("@Descricao", msg.descricao));

            con.Open();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            return true;
        }



    }
}