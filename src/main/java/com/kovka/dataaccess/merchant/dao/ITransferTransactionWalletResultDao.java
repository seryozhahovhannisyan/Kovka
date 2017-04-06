package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.transfer.TransferTransactionWalletResult;
import com.kovka.common.exception.DataException;

/**
 * Created by Serozh on 2/14/2017.
 */
public interface ITransferTransactionWalletResultDao {

    public void add(TransferTransactionWalletResult data) throws DataException;

}
