package com.kovka.business.merchant;


import com.kovka.common.data.merchant.lcp.CurrencyType;
import com.kovka.common.data.transaction.cashbox.BranchCashBoxProvider;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.exception.PermissionDeniedException;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface IBranchCashBoxProviderManager {

    public void add(Long cashierId,
                    Long companyId,
                    Double provideAmount,
                    CurrencyType provideCurrencyType,
                    Set<Long> provideIdes) throws InternalErrorException, PermissionDeniedException;

    public BranchCashBoxProvider getById(Long id) throws InternalErrorException, EntityNotFoundException;

    public List<BranchCashBoxProvider> getByParams(Map<String, Object> params) throws InternalErrorException;

    public int getCountByParams(Map<String, Object> params) throws InternalErrorException;

    public void update(BranchCashBoxProvider data) throws InternalErrorException, EntityNotFoundException;

}
