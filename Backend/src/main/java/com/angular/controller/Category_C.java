package com.angular.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.angular.model.Album;
import com.angular.model.Category;
import com.angular.service.CategoryService;

@RestController
@RequestMapping("/category/")
public class Category_C {
	@Autowired CategoryService category;
	 
	@GetMapping("")
public ResponseEntity<List<Category>> getlistCategory(){
	List<Category> list = this.category.getListCategory();
	if(list.isEmpty()) {
		return ResponseEntity.notFound().build();
	}
	return new ResponseEntity<List<Category>>(list,HttpStatus.OK);
}
	@GetMapping("{id}")
	public Optional<Category> getCategoryById(@PathVariable("id")Integer id){
		return this.category.findById(id);
	}
	@PostMapping("save")
	public Category save(@Valid @RequestBody Category category) {
		return this.category.SaveorUpdate(category);
	}
	@PutMapping("update/{id}")
	public ResponseEntity<Category> updateCategory(@PathVariable("id")Integer id, @RequestBody Category category){
		Category danhmuc = this.category.getOne(id);
		if(danhmuc == null) {
			return ResponseEntity.notFound().build();
		}
		Category updatecategory = this.category.SaveorUpdate(danhmuc);
		return  ResponseEntity.ok(updatecategory);
	}
	@DeleteMapping("{id}")
	public ResponseEntity<Album> delete(@PathVariable("id")Integer id){
		Category entity = this.category.getOne(id);
		if(entity == null) {
			return ResponseEntity.notFound().build();
		}
		this.category.delete(id);
		return ResponseEntity.ok().build();
	}
}
