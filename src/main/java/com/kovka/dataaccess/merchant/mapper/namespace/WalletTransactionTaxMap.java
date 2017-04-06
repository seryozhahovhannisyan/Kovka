package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.deposit.WalletDepositTax;
import com.kovka.common.data.transaction.withdraw.WalletWithdrawTax;

public interface WalletTransactionTaxMap {

    public void addWithdraw(WalletWithdrawTax data);

    public void addDeposit(WalletDepositTax data);

    public void markTransactionWithdraw(WalletWithdrawTax data);

    public void markTransactionDeposit(WalletDepositTax data);

}
