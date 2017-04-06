package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.deposit.WalletDepositTax;
import com.kovka.common.data.transaction.withdraw.WalletWithdrawTax;
import com.kovka.common.exception.DataException;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.IWalletTransactionTaxDao;
import com.kovka.dataaccess.merchant.mapper.namespace.WalletTransactionTaxMap;

/**
 * Created by Serozh on 1/16/2017.
 */
public class WalletTransactionTaxDaoImpl implements IWalletTransactionTaxDao {

    private WalletTransactionTaxMap map;

    public void setMap(WalletTransactionTaxMap map) {
        this.map = map;
    }

    @Override
    public void add(WalletWithdrawTax data) throws DatabaseException {
        try {
            map.addWithdraw(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void add(WalletDepositTax data) throws DatabaseException {
        try {
            map.addDeposit(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void markTransaction(WalletWithdrawTax data) throws DataException {
        try {
            map.markTransactionWithdraw(data);
        } catch (RuntimeException e) {
            throw new DataException(e);
        }
    }

    @Override
    public void markTransaction(WalletDepositTax data) throws DataException {
        try {
            map.markTransactionDeposit(data);
        } catch (RuntimeException e) {
            throw new DataException(e);
        }
    }
}
