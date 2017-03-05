package com.qingjie.model.repository;

import org.springframework.data.repository.CrudRepository;

import com.qingjie.model.Customer;
import com.qingjie.model.TheOrder;

public interface TheOrderRepository extends CrudRepository<TheOrder, Long> {

	TheOrder findByCustomer(Customer customer);
}
