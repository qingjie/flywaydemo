package com.qingjie.model.repository;

import org.springframework.data.repository.CrudRepository;

import com.qingjie.model.Product;

public interface ProductRepository extends CrudRepository<Product, Long> {

	Product findByName(String name);

}
