package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.deposit.TransactionDepositProcessTax;
import com.kovka.common.data.transaction.withdraw.TransactionWithdrawProcessTax;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.ITransactionProcessTaxDao;
import com.kovka.dataaccess.merchant.mapper.namespace.TransactionProcessTaxMap;

/**
 * Created by Serozh on 1/16/2017.
 */
public class TransactionProcessTaxDaoImpl implements ITransactionProcessTaxDao {

    private TransactionProcessTaxMap map;

    public void setMap(TransactionProcessTaxMap map) {
        this.map = map;
    }


    @Override
    public void add(TransactionWithdrawProcessTax data) throws DatabaseException {
        try {
            map.addWithdraw(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void add(TransactionDepositProcessTax data) throws DatabaseException {
        try {
            map.addDeposit(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }
}
