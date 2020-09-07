package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;

public class DadosPagamento {

	private BigDecimal value;
//	Pelo nome do atributo, através do getter, o spring irá enviar em formato json
//	ex: {"value":500} -> chave é o nome do atributo

	public DadosPagamento(BigDecimal value) {
		this.value = value;
	}
	
	public DadosPagamento() {
	}

	public BigDecimal getValue() {
		return value;
	}

}
