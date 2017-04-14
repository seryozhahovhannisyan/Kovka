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
            throw new DataParseException("Empty list");
        }

        JSONParser parser = new JSONParser();
        Object unitsObj = null;
        try {
            unitsObj = parser.parse(request);
            JSONObject responseMessage = (JSONObject) unitsObj;
            if (responseMessage != null) {

                params.put("count", responseMessage.get("count"));
                params.put("page", responseMessage.get("page"));

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

}
