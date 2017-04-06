package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.deposit.TransactionDepositExchange;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawExchange;

public interface TransactionExchangeMap {

    public void addWithdraw(TransactionWithdrawExchange data);

    public void addDeposit(TransactionDepositExchange data);

}
