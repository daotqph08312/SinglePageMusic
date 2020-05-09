package com.angular.interfaces;

import java.util.List;
import java.util.Optional;

import com.angular.model.Session;

public interface SessionInterFace {
	public List<Session> getListSession();
	public Optional<Session> findById(Integer id);
	public Session findOne(Integer id);
	public Session SaveorUpdate(Session session);
	public void delete(Integer id);
}
