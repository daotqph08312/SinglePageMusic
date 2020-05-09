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

import com.angular.model.Playlistdetail;
import com.angular.service.PlaylistDetailService;

@RestController
@RequestMapping("/Playlistdetail/")
public class PlayListDetail_C {
	@Autowired PlaylistDetailService Playlistdetail;
	@GetMapping("")
	public ResponseEntity<List<Playlistdetail>> getListPlaylist(){
		List<Playlistdetail> Playlistdetail = this.Playlistdetail.getListPlaylistdetail();
		if(Playlistdetail.isEmpty()) {
			return ResponseEntity.notFound().build();
		}
		return new ResponseEntity<List<Playlistdetail>>(Playlistdetail,HttpStatus.OK);
	}
	@GetMapping("{id}")
	public Optional<Playlistdetail> getById(@PathVariable("id")Integer id){
		return this.Playlistdetail.findById(id);
	}
	@PostMapping("save")
	public Playlistdetail Save(@Valid @RequestBody Playlistdetail Playlistdetail){
		return this.Playlistdetail.SaveorUpdate(Playlistdetail);
	}
	@PutMapping("update/{id}")
	public ResponseEntity<Playlistdetail> update(@RequestBody Playlistdetail Playlistdetail,@PathVariable("id")Integer id){
		Playlistdetail list = this.Playlistdetail.findOne(id);
		if(list == null) {
			return ResponseEntity.notFound().build();
		}
		Playlistdetail updatePlaylist = this.Playlistdetail.SaveorUpdate(Playlistdetail);
		return ResponseEntity.ok(updatePlaylist);
	}
	@DeleteMapping("delete/{id}")
	public ResponseEntity<Playlistdetail> deleteById(@PathVariable("id")Integer id){
		Playlistdetail list = this.Playlistdetail.findOne(id);
		if(list == null) {
			return ResponseEntity.notFound().build();
		}
		  this.Playlistdetail.delete(id);
		return ResponseEntity.ok().build();
	}
}
