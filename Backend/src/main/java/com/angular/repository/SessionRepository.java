package com.angular.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
 
import com.angular.model.Session;
@Repository
public interface SessionRepository extends JpaRepository<Session, Integer> {

}
