package com.angular.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.angular.interfaces.AlbumInterface;
import com.angular.model.Album;
import com.angular.repository.AlbumRepository;
import com.angular.repository.CategoryRepository;

@Service
@Transactional
public class AlbumService implements AlbumInterface{
	@Autowired  AlbumRepository album;
	@Autowired CategoryRepository category;
	@Override
	public List<Album> getListAlbum() {
		return album.findAll();
	}

	@Override
	public Optional<Album> findOne(Integer id) {
		return album.findById(id);
	}

	@Override
	public Album SaveorUpdate(Album album) {
		return this.album.save(album);
	}

	@Override
	public void delete(Integer id) {
		 album.deleteById(id); 
	}

}
