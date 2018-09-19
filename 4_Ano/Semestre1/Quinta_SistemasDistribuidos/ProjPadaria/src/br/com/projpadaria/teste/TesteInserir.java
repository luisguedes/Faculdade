package br.com.projpadaria.teste;

import br.com.projpadaria.dados.PadariaDB;
import br.com.projpadaria.entidade.Padaria;

public class TesteInserir {

	public static void main(String[] args) {
		
		Padaria p = new Padaria();
		
		p.setCNPJ(123);
		p.setCidade("Araraquara");
		p.setEndereco("Centro");
		p.setEstado("SP");
		p.setNome("Minha Padaria");
		p.setTelefone("(16) 9 1234-4567");
		
		if (PadariaDB.getInstance().inserir(p)){
			System.out.println("Inserido com sucesso!");
		}else{
			System.out.println("Erro ao inserir");
		}
	}

}
