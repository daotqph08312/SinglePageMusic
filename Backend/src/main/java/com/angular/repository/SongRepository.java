package com.angular.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.angular.model.Song;
@Repository
public interface SongRepository extends JpaRepository<Song, Integer> {
@Query(value = "Select s from Song s order by s.viewcount desc")
public List<Song> getChartMusic();
@Query(value = "select s from Song s where s.album.id =:id" )
public List<Song>  getSongbyAlbum(@Param("id") Integer id);
}
