package service;

import java.awt.PageAttributes.MediaType;

import javax.xml.ws.Response;

import controle.CarroCtrl;
import entidade.Carro;

@Path("/carro")
public class CarroService {

	@GET
	@Path("/select")
	public Response select() {
		return Response.ok(new CarroCtrl().select(Carro.CONS_CARRO_ALL), MediaType.APPLICATION_JSON).build();
	}

	@POST
	@Path("/save")
	public void save(Carro carro) {
		new CarroCtrl().inset(carro);
	}

	@POST
	@Path("/update")
	public void update(Carro carro) {
		new CarroCtrl().update(carro);
	}

	@POST
	@Path("/delete")
	public void delete(Carro carro) {
		new CarroCtrl().delete(carro);
}