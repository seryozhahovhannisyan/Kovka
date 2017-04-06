package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.deposit.TransactionDepositTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawTax;
import com.kovka.common.exception.DatabaseException;

public interface ITransactionTaxDao {

    public void add(TransactionWithdrawTax data) throws DatabaseException;

    public void add(TransactionDepositTax data) throws DatabaseException;

}
