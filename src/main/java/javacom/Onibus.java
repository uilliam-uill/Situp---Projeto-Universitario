package javacom;

public class Onibus {
	public int vagas;
	public String placa;
	public boolean gestaoQrcode;
	public boolean gestaoVagas;
	public String motorista;
	public int id_prefeitura;
	public String cidade;
	public String horario;
	
	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public int getVagas() {
		return vagas;
	}

	public void setVagas(int vagas) {
		this.vagas = vagas;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public boolean isGestaoQrcode() {
		return gestaoQrcode;
	}

	public void setGestaoQrcode(boolean gestaoQrcode) {
		this.gestaoQrcode = gestaoQrcode;
	}

	public boolean isGestaoVagas() {
		return gestaoVagas;
	}

	public void setGestaoVagas(boolean gestaoVagas) {
		this.gestaoVagas = gestaoVagas;
	}

	public String getMotorista() {
		return motorista;
	}

	public void setMotorista(String motorista) {
		this.motorista = motorista;
	}

	public int getId_prefeitura() {
		return id_prefeitura;
	}

	public void setId_prefeitura(int id_prefeitura) {
		this.id_prefeitura = id_prefeitura;
	}

}
