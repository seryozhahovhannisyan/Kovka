package com.kovka.business.merchant;

import com.kovka.common.data.merchant.Cashier;
import com.kovka.common.data.merchant.CompanyFormRequest;
import com.kovka.common.data.merchant.CompanyFormResponse;
import com.kovka.common.data.transaction.cashbox.CompanyCashBox;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.web.action.util.notification.MailContent;

public interface ICompanyFormRequestManager {

    public void add(MailContent mailContent, CompanyFormRequest data) throws InternalErrorException;

    public void activate(CompanyFormRequest companyFormRequest) throws InternalErrorException, EntityNotFoundException;

    @Deprecated
    //remove after testing
    public Cashier activateCompany(CompanyFormRequest formRequest, CompanyFormResponse formResponse, CompanyCashBox companyCashBox) throws InternalErrorException;

}
