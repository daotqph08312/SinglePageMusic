package com.angular.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.angular.interfaces.PlayListInterface;
import com.angular.model.Playlist;
import com.angular.repository.PlayListRepository;

@Service
@Transactional
public class PlaylistService implements PlayListInterface {
	@Autowired PlayListRepository playlist;
	@Override
	public List<Playlist> getListPlaylist() {
		return this.playlist.findAll();
	}

	@Override
	public Optional<Playlist> findById(Integer id) {
		return this.playlist.findById(id);
	}

	@Override
	public Playlist getOne(Integer id) {
		return this.playlist.getOne(id);
	}

	@Override
	public Playlist SaveorUpdate(Playlist category) {
		return this.playlist.save(category);
	}

	@Override
	public void delete(Integer id) {
	 this.playlist.deleteById(id);
		
	}

}
