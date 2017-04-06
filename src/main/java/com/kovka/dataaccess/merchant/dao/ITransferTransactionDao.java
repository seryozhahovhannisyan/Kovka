package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.transfer.TransferTransaction;
import com.kovka.common.exception.DataException;
import com.kovka.common.exception.DatabaseException;

/**
 * Created by Serozh on 2/14/2017.
 */
public interface ITransferTransactionDao {

    public void add(TransferTransaction data) throws DatabaseException;

    public void markTransaction(TransferTransaction data) throws DataException;

}
