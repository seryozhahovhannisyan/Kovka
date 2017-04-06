package com.kovka.business.wallet.impl;

import com.kovka.business.wallet.IWalletManager;
import com.kovka.common.data.wallet.Wallet;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.DataConverter;
import com.kovka.common.util.Utils;
import com.kovka.dataaccess.merchant.dao.ICompanyCashBoxDao;
import com.kovka.dataaccess.merchant.dao.ICompanyDao;
import com.kovka.dataaccess.wallet.dao.IWalletDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by htdev001 on 8/26/14.
 */
@Transactional(readOnly = true)
public class WalletManagerImpl implements IWalletManager {

    private IWalletDao walletDao;
    private ICompanyCashBoxDao companyCashBoxDao;
    private ICompanyDao companyDao;

    public void setWalletDao(IWalletDao walletDao) {
        this.walletDao = walletDao;
    }

    public void setCompanyCashBoxDao(ICompanyCashBoxDao companyCashBoxDao) {
        this.companyCashBoxDao = companyCashBoxDao;
    }

    public void setCompanyDao(ICompanyDao companyDao) {
        this.companyDao = companyDao;
    }

    @Override
    public Wallet getById(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            return walletDao.getById(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<Wallet> getByParams(Map<String, Object> params) throws InternalErrorException {
        try {
            String availableRateValues = companyCashBoxDao.getAvailableRateValues(params);
            if(!Utils.isEmpty(availableRateValues)){
                DataConverter.parseAvailableRates(availableRateValues);
                params.put("availableRateValues", availableRateValues);
            }

            String allowedPartitionValues = companyDao.getAllowedPartitionValues(params);
            if(!Utils.isEmpty(allowedPartitionValues)){
                DataConverter.parseAllowedPartitions(allowedPartitionValues);
                params.put("allowedPartitionValues", allowedPartitionValues);
            }
            return walletDao.getByParams(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        } catch (DataParseException e) {
            throw new InternalErrorException(e);
        } catch (NullPointerException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Integer getCountByParams(Map<String, Object> params) throws InternalErrorException {
        try {

            String availableRateValues = companyCashBoxDao.getAvailableRateValues(params);
            if(!Utils.isEmpty(availableRateValues)){
                DataConverter.parseAvailableRates(availableRateValues);
                params.put("availableRateValues", availableRateValues);
            }

            String allowedPartitionValues = companyDao.getAllowedPartitionValues(params);
            if(!Utils.isEmpty(allowedPartitionValues)){
                DataConverter.parseAllowedPartitions(allowedPartitionValues);
                params.put("allowedPartitionValues", allowedPartitionValues);
            }

            return walletDao.getCountByParams(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        } catch (DataParseException e) {
            throw new InternalErrorException(e);
        } catch (NullPointerException e) {
            throw new InternalErrorException(e);
        }
    }
}
