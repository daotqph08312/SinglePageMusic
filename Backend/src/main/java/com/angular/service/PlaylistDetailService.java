package com.angular.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.angular.interfaces.PlayListDetailInterface;
import com.angular.model.Playlistdetail;
import com.angular.repository.PlayListdetailRepository;

@Service
@Transactional
public class PlaylistDetailService implements PlayListDetailInterface {
	@Autowired PlayListdetailRepository playlistdetail;
	@Override
	public List<Playlistdetail> getListPlaylistdetail() {
		return this.playlistdetail.findAll();
	}

	@Override
	public Optional<Playlistdetail> findById(Integer id) {
		return this.playlistdetail.findById(id);
	}

	@Override
	public Playlistdetail findOne(Integer id) {
		return this.playlistdetail.getOne(id);
	}

	@Override
	public Playlistdetail SaveorUpdate(Playlistdetail category) {
		return this.playlistdetail.save(category);
	}

	@Override
	public void delete(Integer id) {
		this.playlistdetail.deleteById(id);
		
	}

}
