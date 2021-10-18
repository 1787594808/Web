package cn.sdust.service.imple;

import cn.sdust.dao.CustomerDao;
import cn.sdust.pojo.Customer;
import cn.sdust.service.ICustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("customerService")
public class CustomerServiceImple implements ICustomerService {
    @Resource
    private CustomerDao customerDao;
    @Override
    public List<Customer> queryAll() {
        return customerDao.selectCustomer();
    }
}
