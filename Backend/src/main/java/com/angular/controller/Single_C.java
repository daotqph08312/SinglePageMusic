package com.angular.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.angular.model.Singer;
import com.angular.service.SingerService;

@RestController
@RequestMapping("/single/")
@CrossOrigin()
public class Single_C {
	@Autowired SingerService single;
	@GetMapping("")
	public ResponseEntity<List<Singer>> getListPlaylist(){
		List<Singer> single = this.single.getListSession();
		if(single.isEmpty()) {
			return ResponseEntity.notFound().build();
		}
		return new ResponseEntity<List<Singer>>(single,HttpStatus.OK);
	}
	@GetMapping("{id}")
	public Optional<Singer> getById(@PathVariable("id")Integer id){
		return this.single.FindOne(id);
	}
	@PostMapping("save")
	public Singer Save(@Valid @RequestBody Singer single){
		return this.single.SaveorUpdate(single);
	}
	@PutMapping("update/{id}")
	public ResponseEntity<Singer> update(@RequestBody Singer single,@PathVariable("id")Integer id){
		Singer list = this.single.getOne(id);
		if(list == null) {
			return ResponseEntity.notFound().build();
		}
		Singer updateSinger = this.single.SaveorUpdate(single);
		return ResponseEntity.ok(updateSinger);
	}
	@DeleteMapping("delete/{id}")
	public ResponseEntity<Singer> deleteById(@PathVariable("id")Integer id){
		Singer list = this.single.getOne(id);
		if(list == null) {
			return ResponseEntity.notFound().build();
		}
		  this.single.delete(id);
		return ResponseEntity.ok().build();
	}
}
