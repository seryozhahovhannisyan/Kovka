package com.kovka.business.merchant;

import com.kovka.common.data.transaction.transfer.TransferTransaction;
import com.kovka.common.exception.*;

/**
 * Created by Serozh on 2/14/2017.
 */
public interface ITransferTransactionManager {

    public void add(TransferTransaction data) throws InternalErrorException, EntityNotFoundException, PermissionDeniedException, HttpConnectionDeniedException, WalletApiException;

}
