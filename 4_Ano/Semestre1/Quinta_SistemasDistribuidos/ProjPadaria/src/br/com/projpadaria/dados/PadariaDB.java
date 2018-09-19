package br.com.projpadaria.dados;

import javax.persistence.EntityManager;

import br.com.projpadaria.entidade.Padaria;
import br.com.projpadaria.util.JPAUtil;

public class PadariaDB {

	// Declara��o do atributo instance do tipo PadariaDB
	private static PadariaDB instance;
	// Declara��o do atributo do tipo EntityManager
	EntityManager entityManager;

	private PadariaDB() {
		// Recebe a conex�o com a base de dados
		entityManager = JPAUtil.getEntityManager();
	}

	// M�todo respons�vel por instanciar a classe PadariaDB()
	public static PadariaDB getInstance() {
		if (instance == null) {
			instance = new PadariaDB();
			// Ao instanciar a classe o m�todo construtor �
			// chamado
		}
		return instance;
	}

	public boolean inserir(Padaria p) {
		try {
			//Abrir Transa��o
			entityManager.getTransaction().begin();
			//Inserir dados na base
			//Cria��o da Query de Insert Pelo Hibernate
			entityManager.persist(p);
			//Salvar dados e fechar transa��o
			entityManager.getTransaction().commit();
		} catch (Exception e) {
			//Revers�o das altera��es realizadas
			entityManager.getTransaction().rollback();
			return false;
		}
		return true;
	}
}
