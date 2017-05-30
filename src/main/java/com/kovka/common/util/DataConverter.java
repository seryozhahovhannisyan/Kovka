package com.kovka.common.util;


import com.kovka.common.exception.DataParseException;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.util.*;

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

                if (responseMessage.get("search") != null) {
                    params.put("search", responseMessage.get("search").toString());
                }
                //sketches/articles/searches/
                if (responseMessage.get("type") != null) {
                    params.put("type", responseMessage.get("type").toString());
                }

                if (responseMessage.get("category") != null) {
                    String category = responseMessage.get("category").toString();
                    if("1".equals(category)){
                        params.put("machine", 1);
                    }
                    params.put("category", category);
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

    public static List<Long> convertStringIdesToLong(String data) throws DataParseException {
        List<Long> ides = new ArrayList<Long>();
        if (Utils.isEmpty(data)) {
            throw new DataParseException("Empty list");
        }

        try {
            for (String i : data.split(",")) {
                ides.add(Long.parseLong(i.trim()));
            }
            return ides;
        } catch (Exception e) {
            throw new DataParseException(e);
        }

    }

    public static String join(Collection<String> collection, String delim) {

        StringBuilder sb = new StringBuilder();

        String loopDelim = "";

        for (String s : collection) {

            sb.append(loopDelim);
            sb.append(s);

            loopDelim = delim;
        }

        return sb.toString();
    }
}
