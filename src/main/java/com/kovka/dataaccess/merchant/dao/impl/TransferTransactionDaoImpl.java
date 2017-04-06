package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.transfer.TransferTransaction;
import com.kovka.common.exception.DataException;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.ITransferTransactionDao;
import com.kovka.dataaccess.merchant.mapper.namespace.TransferTransactionMap;

/**
 * Created by Serozh on 2/14/2017.
 */
public class TransferTransactionDaoImpl implements ITransferTransactionDao {

    private TransferTransactionMap map;

    public void setMap(TransferTransactionMap map) {
        this.map = map;
    }

    @Override
    public void add(TransferTransaction data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }
@Override
    public void markTransaction(TransferTransaction data) throws DataException {
        try {
            map.markTransaction(data);
        } catch (RuntimeException e) {
            throw new DataException(e);
        }
    }

}
