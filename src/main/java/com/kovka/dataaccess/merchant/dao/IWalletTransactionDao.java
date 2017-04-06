package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.deposit.WalletDeposit;
import com.kovka.common.data.transaction.withdraw.WalletWithdraw;
import com.kovka.common.exception.DatabaseException;

public interface IWalletTransactionDao {

    public void add(WalletWithdraw data) throws DatabaseException;

    public void add(WalletDeposit data) throws DatabaseException;

/*    public void markTransaction(WalletWithdraw data) throws DatabaseException, EntityNotFoundException;

    public void markTransaction(WalletDeposit data) throws DatabaseException, EntityNotFoundException;*/

}
