/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ifc.enem.controller;

import br.com.ifc.enem.util.jsf.FacesUtil;
import java.io.IOException;
import java.io.Serializable;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.inject.Inject;
import javax.inject.Named;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Named
@SessionScoped
public class LoginBean implements Serializable {

    private static final long serialVersionUID = 1L;

    @Inject
    private FacesContext facesContext;

    @Inject
    private HttpServletRequest request;

    @Inject
    private HttpServletResponse response;

    private String email;

    public void preRender() {
        if ("true".equals(request.getParameter("invalid"))) {
            FacesUtil.addErrorMessage("Usuário ou senha inválido!");
        }
    }

    public void login() throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.xhtml");
        dispatcher.forward(request, response);

        facesContext.responseComplete();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
