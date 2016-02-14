/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author mhcrnl
 */
public class LoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";
    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        //extract user data
        LoginForm formBean = (LoginForm) form;
        String name = formBean.getName();
        String cnp  = formBean.getCnp();
        String email= formBean.getEmail();
        String telefon = formBean.getTelefon();
        
        //perform validation
        if(cnp.equals("") ||
                ( name==null) ||
                cnp==null ||
                email==null ||
                telefon==null ||
                name.equals("") ||
                cnp.equals("") ||
                telefon.equals("") ||
                email.indexOf("@")
                 == -1){
            
            formBean.setError();
            return mapping.findForward(FAILURE);
        }
        
        return mapping.findForward(SUCCESS);
    }
}
