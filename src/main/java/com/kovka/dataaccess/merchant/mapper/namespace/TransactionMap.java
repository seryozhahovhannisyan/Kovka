package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.deposit.TransactionDeposit;
import com.kovka.common.data.transaction.withdraw.TransactionWithdraw;

import java.util.List;
import java.util.Map;

public interface TransactionMap {

    public void addWithdraw(TransactionWithdraw data);

    public void addDeposit(TransactionDeposit data);

    public List<TransactionWithdraw> getWithdrawsByParams(Map<String, Object> params);

    public List<TransactionDeposit> getDepositsByParams(Map<String, Object> params);

    public int getWithdrawsCountByParams(Map<String, Object> params);

    public int getDepositsCountByParams(Map<String, Object> params);

    public void closeWithdraw(TransactionWithdraw data);

    public void closeDeposit(TransactionDeposit data);

}
