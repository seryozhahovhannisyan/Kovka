package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.deposit.TransactionDepositProcessTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawProcessTax;

public interface TransactionProcessTaxMap {

    public void addWithdraw(TransactionWithdrawProcessTax data);

    public void addDeposit(TransactionDepositProcessTax data);

}
