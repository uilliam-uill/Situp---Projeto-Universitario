package javacom;

public class Prefeitura {
	static private Prefeitura instance;
	public String cnpj;
	public String cidade;
	public String email;
	public String senha;
	static int id_prefeitura;

	public static int getId_prefeitura() {
		return id_prefeitura;
	}

	public static Prefeitura getInstance() {
		if(instance == null) {
			instance = new Prefeitura();
		}
		return instance;
	}
	
	public static void setId_prefeitura(int id_prefeitura) {
		Prefeitura.id_prefeitura = id_prefeitura;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}
