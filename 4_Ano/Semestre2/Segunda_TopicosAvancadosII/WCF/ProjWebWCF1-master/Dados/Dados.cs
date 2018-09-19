using Entidade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dados
{
    public class Dados
    {
        public bool Inserir(EquipamentoVO equipamentoVO)
        {
            EquipamentoEntities context = new EquipamentoEntities();
            context.Equipamento.Add(Converte.ToEquipamento(equipamentoVO));
            int retorno = context.SaveChanges();
            /*if (retorno == 1)
                return true;
            return false;*/
            return retorno == 1;
        }
    }
}
