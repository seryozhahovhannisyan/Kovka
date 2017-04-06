package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.deposit.TransactionDepositTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawTax;

public interface TransactionTaxMap {

    public void addWithdraw(TransactionWithdrawTax data);

    public void addDeposit(TransactionDepositTax data);

}
