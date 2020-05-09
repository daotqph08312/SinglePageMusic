package com.angular.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

 
import com.angular.model.Playlist;
import com.angular.model.Playlistdetail;
@Repository
public interface PlayListdetailRepository extends JpaRepository<Playlistdetail, Integer> {

}
