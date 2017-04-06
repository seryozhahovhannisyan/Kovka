package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.deposit.TransactionDepositExchangeTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawExchangeTax;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.ITransactionExchangeTaxDao;
import com.kovka.dataaccess.merchant.mapper.namespace.TransactionExchangeTaxMap;

/**
 * Created by Serozh on 1/16/2017.
 */
public class TransactionExchangeTaxDaoImpl implements ITransactionExchangeTaxDao {

    private TransactionExchangeTaxMap map;

    public void setMap(TransactionExchangeTaxMap map) {
        this.map = map;
    }

    @Override
    public void add(TransactionWithdrawExchangeTax data) throws DatabaseException {
        try {
            map.addWithdraw(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void add(TransactionDepositExchangeTax data) throws DatabaseException {
        try {
            map.addDeposit(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }
}
