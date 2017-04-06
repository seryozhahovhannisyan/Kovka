package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.deposit.WalletDeposit;
import com.kovka.common.data.transaction.withdraw.WalletWithdraw;

public interface WalletTransactionMap {

    public void addWithdraw(WalletWithdraw data);

    public void addDeposit(WalletDeposit data);

//    public void markTransactionWithdraw(WalletWithdraw data);
//
//    public void markTransactionDeposit(WalletDeposit data);

}
