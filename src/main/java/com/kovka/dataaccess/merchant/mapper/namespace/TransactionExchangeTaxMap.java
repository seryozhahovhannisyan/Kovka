package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.deposit.TransactionDepositExchangeTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawExchangeTax;

public interface TransactionExchangeTaxMap {

    public void addWithdraw(TransactionWithdrawExchangeTax data);

    public void addDeposit(TransactionDepositExchangeTax data);

}
