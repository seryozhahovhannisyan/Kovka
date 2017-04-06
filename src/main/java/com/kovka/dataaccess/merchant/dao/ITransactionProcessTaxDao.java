package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.deposit.TransactionDepositProcessTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawProcessTax;
import com.kovka.common.exception.DatabaseException;

public interface ITransactionProcessTaxDao {

    public void add(TransactionWithdrawProcessTax data) throws DatabaseException;

    public void add(TransactionDepositProcessTax data) throws DatabaseException;

}
