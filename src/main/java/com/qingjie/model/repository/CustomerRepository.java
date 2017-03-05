package com.qingjie.model.repository;

import org.springframework.data.repository.CrudRepository;

import com.qingjie.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Long> {

	Customer findByName(String name);
}
