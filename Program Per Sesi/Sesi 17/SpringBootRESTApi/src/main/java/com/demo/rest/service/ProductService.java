package com.demo.rest.service;

import java.util.List;


import com.demo.rest.entity.Product;

public interface ProductService {
	List<Product> findAllProducts();

	List<Product> findAllProductsByName(String name);
	
	Product findProductById(Long id);

	Product saveProduct(Product product);

	void deleteProductById(Long id);
}
