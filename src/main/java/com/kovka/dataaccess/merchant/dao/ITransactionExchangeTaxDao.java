package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.deposit.TransactionDepositExchangeTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawExchangeTax;
import com.kovka.common.exception.DatabaseException;

public interface ITransactionExchangeTaxDao {

    public void add(TransactionWithdrawExchangeTax data) throws DatabaseException;

    public void add(TransactionDepositExchangeTax data) throws DatabaseException;

}
