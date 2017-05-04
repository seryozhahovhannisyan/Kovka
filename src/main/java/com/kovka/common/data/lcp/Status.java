package com.kovka.common.data.lcp;

/**
 * Created by htdev001 on 3/7/14.
 */
public enum Status {

    ACTIVE          (1, "active"),
    DELETED         (2, "deleted");

    Status(int key, String status) {
        this.key = key;
        this.status = status;
    }

    public static Status getDefault() {
        return null;
    }

    public static synchronized Status valueOf(final int key) {
        for (Status status : Status.values()) {
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

    private int key;
    private String status;

}
