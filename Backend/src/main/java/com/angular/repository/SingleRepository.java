package com.angular.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
 
import com.angular.model.Singer;
@Repository
public interface SingleRepository extends JpaRepository<Singer, Integer> {

}
