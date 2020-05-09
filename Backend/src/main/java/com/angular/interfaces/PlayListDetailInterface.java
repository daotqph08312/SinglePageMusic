package com.angular.interfaces;

import java.util.List;
import java.util.Optional;

import com.angular.model.Playlistdetail;

 

public interface PlayListDetailInterface {
	public List<Playlistdetail> getListPlaylistdetail();
	public Optional<Playlistdetail> findById(Integer id);
	public Playlistdetail findOne(Integer id);
	public Playlistdetail SaveorUpdate(Playlistdetail category);
	public void delete(Integer id);
}
