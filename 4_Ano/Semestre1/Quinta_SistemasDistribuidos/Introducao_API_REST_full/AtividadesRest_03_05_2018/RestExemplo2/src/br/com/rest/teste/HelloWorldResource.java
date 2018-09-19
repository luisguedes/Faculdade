package br.com.rest.teste;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

//http://localhost:8080/RestExemplo1/rest/helloword/show=teste

@Path("helloword")
public class HelloWorldResource {

	@GET
	@Path("show={param}")
	public String show(@PathParam("param") String msg) {
		String out = "Resultado: " + msg;
		return out;
	}

	@GET
	@Path("Somar/{param1}/{param2}")
	public String somar(@PathParam("param1") int a, @PathParam("param2") int b) {
		String out = String.valueOf(a + b);
		return out;
}

}