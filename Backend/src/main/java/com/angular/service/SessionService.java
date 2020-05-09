package com.angular.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.angular.interfaces.SessionInterFace;
import com.angular.model.Session;
import com.angular.repository.SessionRepository;

@Service
@Transactional
public class SessionService implements SessionInterFace {
	@Autowired SessionRepository session;
	@Override
	public List<Session> getListSession() {
		return this.session.findAll();
	}

	@Override
	public Optional<Session> findById(Integer id) {
		return this.session.findById(id);
	}

	@Override
	public Session findOne(Integer id) {
		return this.session.getOne(id);
	}

	@Override
	public Session SaveorUpdate(Session session) {
	return this.session.save(session);
	}

	@Override
	public void delete(Integer id) {
		this.session.deleteById(id);
	}

}
