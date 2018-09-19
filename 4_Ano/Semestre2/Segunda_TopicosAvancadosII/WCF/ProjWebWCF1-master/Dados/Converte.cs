using Entidade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dados
{
    public class Converte
    {
        public static Equipamento ToEquipamento (EquipamentoVO equipamentoVO)
        {
            return new Equipamento()
            {
                Id = equipamentoVO.Id,
                Nome = equipamentoVO.Nome,
                Valor = equipamentoVO.Valor,
                DataCadastro = equipamentoVO.DataCadastro
            };
        }
        public static EquipamentoVO ToEquipamentoVO (Equipamento equipamento)
        {
            return new EquipamentoVO()
            {
                Id = equipamento.Id,
                Nome = equipamento.Nome,
                Valor = (decimal) equipamento.Valor,
                DataCadastro = (DateTime) equipamento.DataCadastro
            };
        }

    }
}
