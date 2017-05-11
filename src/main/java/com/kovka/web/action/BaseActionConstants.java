package com.kovka.web.action;

/**
 * Created by Serozh on 6/21/2016.
 */
public interface BaseActionConstants {

    public static final String MESSAGE = "message";
    public static final String INFO = "info";

    public static final int ELEMENT_COUNT_PER_PAGE_SMALL = 4;

    public static final int DEFAULT_TIMEOUT_CRM = 36000;
    public static final int DEFAULT_TIMEOUT_MODERATOR = 36000;

    public static final String COOKIE_MODERATOR_USER_DATA = "user";
    public static final String COOKIE_MODERATOR_LAST_ACTIVITY = "cookie-last_activity";

    public static final String DEFAULT_USER_REF = "user-home";

    public static final String SESSION_USER = "user";

    public static final String GLOBAL_RESULT_LOGIN = "login";
    public static final String GLOBAL_RESULT_PENDING_TRANSACTION = "pending";

    public static final String LANGUAGE = "request_locale";
}
