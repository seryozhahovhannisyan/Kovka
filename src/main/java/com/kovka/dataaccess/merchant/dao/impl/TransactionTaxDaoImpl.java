package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.deposit.TransactionDepositTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawTax;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.ITransactionTaxDao;
import com.kovka.dataaccess.merchant.mapper.namespace.TransactionTaxMap;

/**
 * Created by Serozh on 1/16/2017.
 */
public class TransactionTaxDaoImpl implements ITransactionTaxDao{

    private TransactionTaxMap map;

    public void setMap(TransactionTaxMap map) {
        this.map = map;
    }

    @Override
    public void add(TransactionWithdrawTax data) throws DatabaseException {
        try {
            map.addWithdraw(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void add(TransactionDepositTax data) throws DatabaseException {
        try {
            map.addDeposit(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }
}
