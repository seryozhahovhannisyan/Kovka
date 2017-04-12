package com.kovka.web.action.general;

import com.kovka.web.action.BaseAction;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.dispatcher.SessionMap;

/**
 * Created by Serozh on 7/4/2016.
 */
public class Logout extends BaseAction {

    public String execute(){
        session.clear();
        try {
            SessionMap session = (SessionMap) ActionContext.getContext().getSession();

            //invalidate
            session.invalidate();
        } catch (Exception e){
            e.printStackTrace();
        }
        return SUCCESS;
    }
}