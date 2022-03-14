package br.com.alura.livraria.tx;

import java.io.Serializable;

import javax.interceptor.InvocationContext;

public interface Transacionado extends Serializable {
	Object executaComTransacao(InvocationContext context);
}
