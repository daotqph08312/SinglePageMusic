package com.angular.interfaces;

import java.util.List;
import java.util.Optional;import javax.persistence.criteria.CriteriaBuilder.In;

import com.angular.model.Playlist;;

public interface PlayListInterface {
	public List<Playlist> getListPlaylist();
	public Optional<Playlist> findById(Integer id);
	public Playlist getOne(Integer id);
	public Playlist SaveorUpdate(Playlist category);
	public void delete(Integer id);
}
