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

import com.angular.model.Session;
import com.angular.service.SessionService;

@RestController
@RequestMapping("/session/")
public class Session_C {
	@Autowired SessionService session;
	@GetMapping("")
	public ResponseEntity<List<Session>> getListPlaylist(){
		List<Session> Session = this.session.getListSession();
		if(Session.isEmpty()) {
			return ResponseEntity.notFound().build();
		}
		return new ResponseEntity<List<Session>>(Session,HttpStatus.OK);
	}
	@GetMapping("{id}")
	public Optional<Session> getById(@PathVariable("id")Integer id){
		return this.session.findById(id);
	}
	@PostMapping("save")
	public Session Save(@Valid @RequestBody Session Session){
		return this.session.SaveorUpdate(Session);
	}
	@PutMapping("update/{id}")
	public ResponseEntity<Session> update(@RequestBody Session Session,@PathVariable("id")Integer id){
		Session list = this.session.findOne(id);
		if(list == null) {
			return ResponseEntity.notFound().build();
		}
		Session updatePlaylist = this.session.SaveorUpdate(Session);
		return ResponseEntity.ok(updatePlaylist);
	}
	@DeleteMapping("delete/{id}")
	public ResponseEntity<Session> deleteById(@PathVariable("id")Integer id){
		Session list = this.session.findOne(id);
		if(list == null) {
			return ResponseEntity.notFound().build();
		}
		  this.session.delete(id);
		return ResponseEntity.ok().build();
	}
}
