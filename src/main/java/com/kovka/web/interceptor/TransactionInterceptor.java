package com.kovka.web.interceptor;

import com.kovka.common.data.merchant.Cashier;
import com.kovka.web.action.BaseActionConstants;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;

import java.util.Map;

public class TransactionInterceptor extends AbstractInterceptor implements BaseActionConstants {

    private long INTERVAL = 120000000; // 2 minutes in milliseconds

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {

        ActionContext context = actionInvocation.getInvocationContext();

        Map<String, Object> session = context.getSession();
        Cashier cashier = (Cashier) session.get(SESSION_CASHIER);
        if (cashier.getPendingCount() > 0) {
            return GLOBAL_RESULT_PENDING_TRANSACTION;
        }
        return actionInvocation.invoke();
    }
}
