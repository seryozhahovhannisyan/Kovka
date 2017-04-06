package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.transaction.transfer.TransferTicket;
import com.kovka.common.exception.DatabaseException;

/**
 * Created by Serozh on 2/14/2017.
 */
public interface ITransferTicketDao {

    public void add(TransferTicket data) throws DatabaseException;

}
