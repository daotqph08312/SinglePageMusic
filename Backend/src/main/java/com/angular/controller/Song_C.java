package com.angular.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
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

import com.angular.model.Song;
import com.angular.service.SongService;

import net.bytebuddy.implementation.bind.annotation.Origin;

@RestController
@CrossOrigin() 
@RequestMapping("/song/")
public class Song_C {
	@Autowired SongService song;
 
@GetMapping(value = "")
public List<Song> getAll(){
	return song.getListSong();
}
@GetMapping("{id}")
public Optional<Song> getSongById(@PathVariable("id")Integer id){
	return this.song.findOne(id);
}
@PostMapping("save")
public ResponseEntity<Song> saveSong(@Valid @RequestBody Song song){
	return this.saveSong(song);
}
@PutMapping("update/{id}")
public ResponseEntity<Song> updateSong(@PathVariable("id")Integer id, @RequestBody Song song){
	Song singer = this.song.getOne(id);
	if(singer == null) {
		return ResponseEntity.notFound().build();
	}
	Song updatesong = this.song.SaveorUpdate(singer);
	return ResponseEntity.ok().body(updatesong);
}
@DeleteMapping("delete/{id}")
public ResponseEntity<Song> deleteSong(@PathVariable("id")Integer id){
	Song singer = this.song.getOne(id);
	if(singer == null) {
		return ResponseEntity.notFound().build();
	}
	 this.song.delete(id);
	 return ResponseEntity.ok().build();
}
@GetMapping("album/{id}")
public List<Song> getListSongbyAlbum(@PathVariable("id") Integer id){
	List<Song> listAlbum = song.getSongbyAlbum(id);
	return listAlbum;
}
}
