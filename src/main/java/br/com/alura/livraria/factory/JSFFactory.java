package br.com.alura.livraria.factory;

import java.util.Map;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.context.Flash;

import br.com.alura.livraria.jsf.annotation.ScopeMap;
import br.com.alura.livraria.jsf.annotation.ScopeMap.Scope;

public class JSFFactory {

	@Produces
	@RequestScoped
	public FacesContext getFacesContext() {
		return FacesContext.getCurrentInstance();
	}

	@Produces
	@RequestScoped
	public Flash getFlash() {
		return getExternalContext().getFlash();
	}

	@Produces
	@ScopeMap(Scope.REQUEST)
	public Map<String, Object> reqeustMap() {
		return getExternalContext().getRequestMap();
	}

	@Produces
	@ScopeMap(Scope.SESSION)
	public Map<String, Object> sessionMap() {
		return getExternalContext().getSessionMap();
	}

	@Produces
	@ScopeMap(Scope.APPLICATION)
	public Map<String, Object> applicationMap() {
		return getExternalContext().getApplicationMap();
	}

	private ExternalContext getExternalContext() {
		return getFacesContext().getExternalContext();
	}

}
