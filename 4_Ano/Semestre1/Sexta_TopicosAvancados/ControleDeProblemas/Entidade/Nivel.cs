﻿namespace Entidade
{
    public class Nivel
    {

        #region Propriedades

        public int Id { get; set; }
        public string Descricao { get; set; }

        #endregion Propriedades

        public override string ToString()
        {
            return "Id: " + this.Id; /* +
                "\nDescrição: " + this.Descricao;*/
        }
        
    }
}