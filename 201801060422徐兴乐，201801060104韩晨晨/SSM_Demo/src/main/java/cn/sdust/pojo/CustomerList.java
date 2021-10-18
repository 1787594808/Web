package cn.sdust.pojo;

import java.util.List;

public class CustomerList {
    private int code;
    private String message;
    private Items items;

    public Items getItems() {
        return items;
    }

    public void setItems(Items items) {
        this.items = items;
    }

    public int getCode() {
        return code;
    }

    public CustomerList(int code, String message, Items items) {
        this.code = code;
        this.message = message;
        this.items = items;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
