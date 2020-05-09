package com.angular.controller;

import java.util.List;
import java.util.Optional;import javax.validation.Valid;

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

import com.angular.model.Playlist;
import com.angular.service.PlaylistService;

@RestController
@RequestMapping("/playlist/")
public class PlayList_C  {
	@Autowired PlaylistService playlist;
	@GetMapping("")
	public ResponseEntity<List<Playlist>> getListPlaylist(){
		List<Playlist> playlist = this.playlist.getListPlaylist();
		if(playlist.isEmpty()) {
			return ResponseEntity.notFound().build();
		}
		return new ResponseEntity<List<Playlist>>(playlist,HttpStatus.OK);
	}
	@GetMapping("{id}")
	public Optional<Playlist> getById(@PathVariable("id")Integer id){
		return this.playlist.findById(id);
	}
	@PostMapping("save")
	public Playlist Save(@Valid @RequestBody Playlist playlist){
		return this.playlist.SaveorUpdate(playlist);
	}
	@PutMapping("update/{id}")
	public ResponseEntity<Playlist> update(@RequestBody Playlist playlist,@PathVariable("id")Integer id){
		Playlist list = this.playlist.getOne(id);
		if(list == null) {
			return ResponseEntity.notFound().build();
		}
		Playlist updatePlaylist = this.playlist.SaveorUpdate(playlist);
		return ResponseEntity.ok(updatePlaylist);
	}
	@DeleteMapping("delete/{id}")
	public ResponseEntity<Playlist> deleteById(@PathVariable("id")Integer id){
		Playlist list = this.playlist.getOne(id);
		if(list == null) {
			return ResponseEntity.notFound().build();
		}
		  this.playlist.delete(id);
		return ResponseEntity.ok().build();
	}
	
}
