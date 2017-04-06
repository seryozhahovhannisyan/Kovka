package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.transaction.transfer.TransferTransaction;

/**
 * Created by Serozh on 2/14/2017.
 */
public interface TransferTransactionMap {

    public void add(TransferTransaction data);
    public void markTransaction(TransferTransaction data);

}
