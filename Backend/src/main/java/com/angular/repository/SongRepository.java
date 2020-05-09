package com.angular.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.angular.model.Song;
@Repository
public interface SongRepository extends JpaRepository<Song, Integer> {

}
