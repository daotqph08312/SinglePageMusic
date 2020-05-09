package com.angular.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.angular.interfaces.CategoryInterface;
import com.angular.model.Category;
import com.angular.repository.CategoryRepository;
@Service
@Transactional
public class CategoryService implements  CategoryInterface{
	@Autowired CategoryRepository category;
	@Override
	public List<Category> getListCategory() {
		return this.category.findAll();
	}

	@Override
	public Category getOne(Integer id) {
		return this.category.getOne(id);
	}

	@Override
	public Optional<Category> findById(Integer id) {
		return this.category.findById(id);
	}

	@Override
	public Category SaveorUpdate(Category category) {
		// TODO Auto-generated method stub
		return this.category.save(category);
	}

	@Override
	public void delete(Integer id) {
		this.category.deleteById(id);
		
	}

}
