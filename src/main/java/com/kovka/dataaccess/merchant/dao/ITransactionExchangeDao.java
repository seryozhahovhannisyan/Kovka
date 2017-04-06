package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.deposit.TransactionDepositExchange;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawExchange;
import com.kovka.common.exception.DatabaseException;

public interface ITransactionExchangeDao {

    public void add(TransactionWithdrawExchange data) throws DatabaseException;

    public void add(TransactionDepositExchange data) throws DatabaseException;

}
