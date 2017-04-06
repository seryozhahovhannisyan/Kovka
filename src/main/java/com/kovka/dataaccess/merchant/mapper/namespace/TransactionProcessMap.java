package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.deposit.TransactionDepositProcess;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawProcess;

public interface TransactionProcessMap {

    public void addWithdraw(TransactionWithdrawProcess data);

    public void addDeposit(TransactionDepositProcess data);

}
