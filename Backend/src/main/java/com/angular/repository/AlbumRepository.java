package com.angular.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.angular.model.Album;
@Repository
public interface AlbumRepository extends JpaRepository<Album, Integer> {
//	@Query("Select a from Album a join a.category c.")
//public List<Album> getAllListAlbum();
}
