using ProjController;
using ProjModel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjControler
{

    public class ControlMonitoramento{

        //ConnectionSQLServer conexao;
        SqlConnection con;

        public ControlMonitoramento(){
            //conexao = new ConnectionSQLServer().getConnectionSQlServer();

            con = new SqlConnection
                (ConfigurationManager.ConnectionStrings["SQLSERVER"].
                ConnectionString);
        }

        public bool Insert(Monitoramento monitora){
            bool status = false;

            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "DBO.PR_INSERIR_CLIENTE";
            cmd.Parameters.Add(new SqlParameter("@DESCRICAO", monitora.descricao));
            cmd.Parameters.Add(new SqlParameter("@QTDCAMERAS", monitora.qtdcameras));
            cmd.Parameters.Add(new SqlParameter("@NOMECLIENTE", monitora.nomecliente));
            cmd.Parameters.Add(new SqlParameter("@VALORPACOTE", monitora.valorpacote));
            cmd.Parameters.Add(new SqlParameter("@FIDELIDADE", monitora.fidelidade));

            //conexao = new ConnectionSQLServer();
            //cmd.Connection = conexao.getConnectionSQlServer();

            con.Open();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            //conexao.Delll();

            return true;
        }

        public decimal CalcularValor(bool fidelidade, int qtdcamera, decimal valor){

                if (fidelidade == false)
                {
                    if (qtdcamera >= 1 && qtdcamera <= 2)
                    {
                        valor = valor - (0.05m * valor);
                    }
                    if (qtdcamera > 2 && qtdcamera <= 4)
                    {
                        valor = valor - (0.10m * valor);
                    }
                    if (qtdcamera > 4)
                    {
                        valor = valor - (0.15m * valor);
                    }
                }

                if (fidelidade == true)
                {
                    if (qtdcamera >= 1 && qtdcamera <= 2)
                    {
                        valor = valor - (0.1m * valor);
                    }
                    if (qtdcamera > 2 && qtdcamera <= 4)
                    {
                        valor = valor - (0.2m * valor);
                    }
                    if (qtdcamera > 4)
                    {
                        valor = valor - (0.3m * valor);
                    }
                }
               
            return valor;
        }

        public DataTable SelectAll()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sqldt = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();            

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "PR_SELECT_CLIENTE";

            //conexao = new ConnectionSQLServer();
            //cmd.Connection = conexao.getConnectionSQlServer();

            con.Open();
            cmd.Connection = con;            
          
            sqldt.SelectCommand = cmd;
            sqldt.Fill(dt);
            con.Close();

            return dt;
        }

    }
}
