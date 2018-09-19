package br.com.projpadaria.dados;

import javax.persistence.EntityManager;

import br.com.projpadaria.entidade.Padaria;
import br.com.projpadaria.util.JPAUtil;

public class PadariaDB {

	// Declaração do atributo instance do tipo PadariaDB
	private static PadariaDB instance;
	// Declaração do atributo do tipo EntityManager
	EntityManager entityManager;

	private PadariaDB() {
		// Recebe a conexão com a base de dados
		entityManager = JPAUtil.getEntityManager();
	}

	// Método responsável por instanciar a classe PadariaDB()
	public static PadariaDB getInstance() {
		if (instance == null) {
			instance = new PadariaDB();
			// Ao instanciar a classe o método construtor é
			// chamado
		}
		return instance;
	}

	public boolean inserir(Padaria p) {
		try {
			//Abrir Transação
			entityManager.getTransaction().begin();
			//Inserir dados na base
			//Criação da Query de Insert Pelo Hibernate
			entityManager.persist(p);
			//Salvar dados e fechar transação
			entityManager.getTransaction().commit();
		} catch (Exception e) {
			//Reversão das alterações realizadas
			entityManager.getTransaction().rollback();
			return false;
		}
		return true;
	}
}
