package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.deposit.WalletDepositTax;
import com.kovka.common.data.transaction.withdraw.WalletWithdrawTax;
import com.kovka.common.exception.DataException;
import com.kovka.common.exception.DatabaseException;

public interface IWalletTransactionTaxDao {

    public void add(WalletWithdrawTax data) throws DatabaseException;

    public void add(WalletDepositTax data) throws DatabaseException;

    public void markTransaction(WalletWithdrawTax data) throws DataException;

    public void markTransaction(WalletDepositTax data) throws DataException;

}
