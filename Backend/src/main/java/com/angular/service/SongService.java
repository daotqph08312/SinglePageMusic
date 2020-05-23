package com.angular.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.angular.interfaces.SongInterFace;
import com.angular.model.Song;
import com.angular.repository.SongRepository;
@Service
@Transactional
public class SongService implements SongInterFace{
	@Autowired private SongRepository song;
	@Override
	public List<Song> getListSong() {
		return this.song.getChartMusic();
	}

	@Override
	public Optional<Song> findOne(Integer id) {
		return this.song.findById(id);
	}

	@Override
	public Song getOne(Integer id) {
		return this.song.getOne(id);
	}

	@Override
	public Song SaveorUpdate(Song singer) {
		return this.song.save(singer);
		
	}

	@Override
	public void delete(Integer id) {
		 this.song.deleteById(id);
		 
	}

	@Override
	public List<Song> getSongbyAlbum(Integer id) {
		return this.song.getSongbyAlbum(id);
	}

}
