package com.angular.interfaces;

import java.util.List;
import java.util.Optional;

import com.angular.model.Category;

 
public interface CategoryInterface {
	public List<Category> getListCategory();
	public Category getOne(Integer id);
	public Optional<Category> findById(Integer id);
	public Category SaveorUpdate(Category category);
	public void delete(Integer id);
}
