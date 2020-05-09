package com.angular.interfaces;

import java.util.List;
import java.util.Optional;

import com.angular.model.Singer;

public interface SingleInterFace {
	public List<Singer> getListSession();
	public Optional<Singer> FindOne(Integer id); 
	public Singer getOne(Integer id);
	public Singer SaveorUpdate(Singer singer);
	public void delete(Integer id);
}
