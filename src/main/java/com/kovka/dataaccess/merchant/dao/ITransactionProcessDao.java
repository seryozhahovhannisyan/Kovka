package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.deposit.TransactionDepositProcess;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawProcess;
import com.kovka.common.exception.DatabaseException;

public interface ITransactionProcessDao {

    public void add(TransactionWithdrawProcess data) throws DatabaseException;

    public void add(TransactionDepositProcess data) throws DatabaseException;

}
