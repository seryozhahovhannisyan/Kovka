package com.kovka.common.data.lcp;

/**
 * Created by htdev001 on 3/7/14.
 */
public enum Category {

    MAIN(1, "main"),
    OFFER(2, "offer");
    //ARTICLE(3, "article");

    private int key;
    private String status;

    Category(int key, String status) {
        this.key = key;
        this.status = status;
    }

    public static Category getDefault() {
        return null;
    }

    public static synchronized Category valueOf(final int key) {
        for (Category status : Category.values()) {
            if (status.getKey() == key) {
                return status;
            }
        }
        return getDefault();
    }

    public int getKey() {
        return key;
    }

    public String getStatus() {
        return status;
    }

}
