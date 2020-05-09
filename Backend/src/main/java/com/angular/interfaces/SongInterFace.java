package com.angular.interfaces;

import java.util.List;
import java.util.Optional;

import com.angular.model.Song;

public interface SongInterFace {
	public List<Song> getListSong();
	public Optional<Song> findOne(Integer id);
	public Song getOne(Integer id);
	public Song SaveorUpdate(Song singer);
	public void delete(Integer id);
}
