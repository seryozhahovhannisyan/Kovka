package com.kovka.common.util;


import com.kovka.common.exception.DataParseException;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Serozh on 6/30/2016.
 */
public class DataConverter {

    public static Map<String, Object> convertRequestToParams(String request) throws DataParseException {
        Map<String, Object> params = new HashMap<String, Object>();

        if (Utils.isEmpty(request)) {
            return params;
        }

        JSONParser parser = new JSONParser();
        Object unitsObj = null;
        try {
            unitsObj = parser.parse(request);
            JSONObject responseMessage = (JSONObject) unitsObj;
            if (responseMessage != null) {

                Object count = responseMessage.get("count");
                Object page = responseMessage.get("page");

                params.put("count", count != null ? count : 10);
                params.put("page", page != null ? page : 1);

                if (responseMessage.get("id") != null) {
                    params.put("id", responseMessage.get("id"));
                }

                if (responseMessage.get("filter") != null) {
                    params.put("filter", responseMessage.get("filter").toString());
                }

                if (responseMessage.get("orderBy") != null && responseMessage.get("orderType") != null) {
                    params.put("orderBy", responseMessage.get("orderBy"));
                    params.put("orderType", responseMessage.get("orderType"));
                }

            }
            return params;
        } catch (Exception e) {
            throw new DataParseException(e);
        }
    }

    public static Long convertToLong(String str) throws DataParseException {
        if (Utils.isEmpty(str)) {
            return null;
        }
        try {
            return Long.parseLong(str);
        } catch (Exception e) {
            throw new DataParseException(e);
        }
    }

}
