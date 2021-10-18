package cn.sdust.dao;

import cn.sdust.pojo.Customer;
import cn.sdust.pojo.User;
import cn.sdust.pojo.searchParams;
import org.apache.ibatis.anotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.List;

@Repository("customerDao")
public interface CustomerDao {
    List<Customer> selectCustomer();
    List<Customer> selectCustomerA(searchParams t);
    void InsertCustomer(Customer c);
    void deleteCustomer(int id);
    void updateCustomerCategory(int encodedId,String categoryId);
    void updateCustomerNextTime(int encodedId,Timestamp timestamp);
    void updateDisA(int encodedId,int DisA);
    String findUserById(int id);
    void updateCustomerUser(int encodedId,String encodedOwnerUserId);
    List<Customer> selectCustomerbyName(String name);
}
