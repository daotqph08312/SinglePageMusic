package com.angular.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.angular.model.Album;
import com.angular.repository.AlbumRepository;
import com.angular.service.AlbumService;

@RestController
@CrossOrigin()
@RequestMapping("/album/")
public class Album_C {
	public static Logger logger = LoggerFactory.getLogger(Album_C.class);
	@Autowired AlbumRepository albumrepo;
	@Autowired AlbumService album;

@RequestMapping(value = "",method = RequestMethod.GET)
public ResponseEntity<List<Album>> getAlbum() {
	List<Album> list = album.getListAlbum();
	if(list.isEmpty()) {
		return new ResponseEntity<List<Album>>(HttpStatus.NO_CONTENT);
	}
	return new ResponseEntity<List<Album>>(list,HttpStatus.OK);
	}
@GetMapping(value = "{id}")
public Optional<Album> findone(@PathVariable("id")Integer id) {
	return album.findOne(id);
}
@PostMapping("save")
public Album Save(@Valid @RequestBody Album album) {
	return this.album.SaveorUpdate(album);
}
@PutMapping("update/{id}")
public ResponseEntity<Album> updateAlbum(@PathVariable("id")Integer id, @RequestBody Album album){
	Album entity = this.albumrepo.getOne(id);
	if(entity == null) {
		return ResponseEntity.notFound().build();
	}
	Album updateAlbum = this.album.SaveorUpdate(entity);
	return ResponseEntity.ok(updateAlbum);
}
@DeleteMapping(value = "delete/{id}")
public ResponseEntity<Album> delete(@PathVariable("id")Integer id){
	Album entity = this.albumrepo.getOne(id);
	if(entity == null) {
		return ResponseEntity.notFound().build();
	}
	this.album.delete(id);
	return ResponseEntity.ok().build();
}


}