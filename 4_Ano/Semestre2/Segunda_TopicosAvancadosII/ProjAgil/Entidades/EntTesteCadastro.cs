using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class EntTesteCadastro
    {

        public int _codigo;
        private string _nome;
        private int _qtdComputadores;
        private int _qtdAluno;
        private Boolean _projetor;
        private string _software1;
        private string _software2;
        private string _software3;
        private string _sistemaOperacional;

        public EntTesteCadastro()
        {
        }

        public EntTesteCadastro(int codigo, string nome, int qtdComputadores, int qtdAluno, bool projetor, string software1, string software2, string software3, string sistemaOperacional)
        {
            _codigo = codigo;
            _nome = nome;
            _qtdComputadores = qtdComputadores;
            _qtdAluno = qtdAluno;
            _projetor = projetor;
            _software1 = software1;
            _software2 = software2;
            _software3 = software3;
            _sistemaOperacional = sistemaOperacional;
        }

        public int Codigo { get => _codigo; set => _codigo = value; }
        public string Nome { get => _nome; set => _nome = value; }
        public int QtdComputadores { get => _qtdComputadores; set => _qtdComputadores = value; }
        public int QtdAluno { get => _qtdAluno; set => _qtdAluno = value; }
        public bool Projetor { get => _projetor; set => _projetor = value; }
        public string Software1 { get => _software1; set => _software1 = value; }
        public string Software2 { get => _software2; set => _software2 = value; }
        public string Software3 { get => _software3; set => _software3 = value; }
        public string SistemaOperacional { get => _sistemaOperacional; set => _sistemaOperacional = value; }

    }
}
