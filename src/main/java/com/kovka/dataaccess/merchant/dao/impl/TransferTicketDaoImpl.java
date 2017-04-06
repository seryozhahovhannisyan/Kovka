package com.kovka.dataaccess.merchant.dao.impl;
import com.kovka.common.data.transaction.transfer.TransferTicket;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.ITransferTicketDao;
import com.kovka.dataaccess.merchant.mapper.namespace.TransferTicketMap;

/**
 * Created by Serozh on 2/14/2017.
 */
public class TransferTicketDaoImpl implements ITransferTicketDao {

    private TransferTicketMap map;

    public void setMap(TransferTicketMap map) {
        this.map = map;
    }

    @Override
    public void add(TransferTicket data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
