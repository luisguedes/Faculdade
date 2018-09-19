package br.com.rest.exercicio2;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

//http://localhost:8080/Exercicio2/rest/exercicio2/tabuada/

@Path("exercicio2")
public class Exercicio2Resource {

	@GET
	@Path("tabuada/{param1}")
	public String tabuada(@PathParam("param1") int tabuada) {
		String out = "Tabuada do " + tabuada + "<br>";
		for (int x = 0; x <= 10; x++) {
			out += String.valueOf("A tabuada do " + tabuada + " x " + x + " eh = " + tabuada * x + "<br>");
		}
		return out;
	}

	@GET
	@Path("triangulo/b={param1}/{param2}/{param3}")
	public String triangulo(@PathParam("param1") int a, @PathParam("param2") int b, @PathParam("param3") int c) {
		String result;
		if (((a < b + c) && (b < a + c) && (c < a + b))) {
			result = "Eh um triangulo.";
		} else {
			result = "Nao eh um triangulo.";
		}

		return result;

	}

}