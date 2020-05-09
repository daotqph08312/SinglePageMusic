package com.angular.interfaces;

import java.util.List;
import java.util.Optional;

import com.angular.model.Album;

public interface AlbumInterface {
public List<Album> getListAlbum();
public Optional<Album> findOne(Integer id);
public Album SaveorUpdate(Album album);
public void delete(Integer id);

}
