package br.com.rest.exercicio3;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

//http://localhost:8080/Exercicio3/rest/exercicio3/show=teste
//http://localhost:8080/Exercicio3/rest/exercicio3/imc/n=luis/i=20/m=86/a=100
@Path("exercicio3")
public class Exercicio3Resource {

	@GET
	@Path("imc/n={param1}/i={param2}/m={param3}/a={param4}")
	public String imc(@PathParam("param1") String nome, @PathParam("param2") int idade, @PathParam("param3") float massa, @PathParam("param4") Float altura) {
		float resultado = (massa*(altura*altura));
		String out = nome + " Seu IMC eh: " + resultado + "<br>";
		return out;
	}

}