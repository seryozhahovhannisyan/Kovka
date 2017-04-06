package com.kovka.web.action.cashbox;

import com.kovka.business.merchant.IBranchManager;
import com.kovka.common.data.merchant.Cashier;
import com.kovka.common.data.merchant.lcp.*;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.web.action.BaseAction;
import com.kovka.web.action.cashier.BranchAction;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Serozh on 6/26/2016.
 */
public class ProviderAction extends BaseAction {

    private IBranchManager branchManager;
    private int dataCount;

    public String toPage() {

        Cashier cashier = (Cashier) session.get(SESSION_CASHIER);
        Privilege privilege = cashier.getPrivilege();

        Long companyId = cashier.getCompanyId();
        Long branchId = cashier.getBranchId();

        Map<String, Object> params = new HashMap<String, Object>();
        params.put("companyId", companyId);
        params.put("status", Status.ACTIVE);

        try {
            if (privilege.getId() == Privilege.ALL.getId() ||
                    privilege.getId() == Privilege.CRUD_COMPANY.getId()) {
                dataCount = branchManager.getCountByParams(params);
                return "company";
            } else if (privilege.getId() == Privilege.CRUD_BRANCH.getId()) {
                params.put("branchId",branchId);
                dataCount = branchManager.getCountByParams(params);
                return "branch";
            } else if (privilege.getId() == Privilege.CRUD_CASHIER.getId() ||
                    privilege.getId() == Privilege.CASHIER.getId()) {
                return "cashier";
            }
        } catch (InternalErrorException e) {
            writeLog(BranchAction.class.getSimpleName(), e, LogLevel.ERROR, LogAction.READ, null);
        }
        return SUCCESS;
    }

    /*##################################################################################################################
     *                                  GETTERS & SETTERS
     *##################################################################################################################
     */


    public int getDataCount() {
        return dataCount;
    }

    public void setBranchManager(IBranchManager branchManager) {
        this.branchManager = branchManager;
    }

}