
public class Ex1Teste {
	
	public static void main(String[] args) {
		
		imprimirTexto("Turma!");
		somar(20, 3);
		
	}
	
	private static void imprimirTExto(String texto) {
		
		try {
			URL url = new URL(
					"http://localhost:8082/RestExemplo1/rest/helloword/show=" + texto);
		
			
		}
	}
}

