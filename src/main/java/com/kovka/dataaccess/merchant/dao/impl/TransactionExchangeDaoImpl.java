package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.deposit.TransactionDepositExchange;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawExchange;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.ITransactionExchangeDao;
import com.kovka.dataaccess.merchant.mapper.namespace.TransactionExchangeMap;

/**
 * Created by Serozh on 1/16/2017.
 */
public class TransactionExchangeDaoImpl implements ITransactionExchangeDao {

    private TransactionExchangeMap map;

    public void setMap(TransactionExchangeMap map) {
        this.map = map;
    }

    @Override
    public void add(TransactionWithdrawExchange data) throws DatabaseException {
        try {
            map.addWithdraw(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void add(TransactionDepositExchange data) throws DatabaseException {
        try {
            map.addDeposit(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }
}
