package com.kovka.web.action.guest;

import com.kovka.business.IWorkSchemeInfoManager;
import com.kovka.common.data.WorkSchemeInfo;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.web.action.BaseAction;
import org.apache.log4j.Logger;

import java.util.List;

/**
 * Created by User on 20.04.2017.
 */
public class WorkSchemeAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(WorkSchemeAction.class.getSimpleName());

    private IWorkSchemeInfoManager workSchemeInfoManager;

    private List<WorkSchemeInfo> workSchemeInfos;

    public String loadWorkScheme() {
        try {
            workSchemeInfos = workSchemeInfoManager.getBy(getToLang());
        } catch (InternalErrorException e) {
            logger.error(e);
        }
        return SUCCESS;
    }

    public List<WorkSchemeInfo> getWorkSchemeInfos() {
        return workSchemeInfos;
    }

    public void setWorkSchemeInfoManager(IWorkSchemeInfoManager workSchemeInfoManager) {
        this.workSchemeInfoManager = workSchemeInfoManager;
    }
}
