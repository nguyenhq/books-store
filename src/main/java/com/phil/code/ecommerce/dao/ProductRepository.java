package com.phil.code.ecommerce.dao;

import com.phil.code.ecommerce.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductRepository extends JpaRepository<Product, Long> {
}
