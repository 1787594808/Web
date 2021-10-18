package cn.sdust.pojo;

import java.util.List;

public class Items
{
    int totalNum;

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public List<Customer> getCustomers() {
        return customers;
    }

    public void setCustomers(List<Customer> customers) {
        this.customers = customers;
    }

    public Items(int totalNum, List<Customer> customers) {
        this.totalNum = totalNum;
        this.customers = customers;
    }

    List<Customer> customers;
}
