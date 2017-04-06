package com.kovka.business.merchant;

import com.kovka.common.data.merchant.MerchantLogger;
import com.kovka.common.exception.InternalErrorException;

public interface IMerchantLoggerManager {

    public void add(MerchantLogger data) throws InternalErrorException;
}
