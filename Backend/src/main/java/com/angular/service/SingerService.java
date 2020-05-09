package com.angular.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.angular.interfaces.SingleInterFace;
import com.angular.model.Singer;
import com.angular.repository.SingleRepository;

@Service
@Transactional
public class SingerService implements SingleInterFace{
@Autowired SingleRepository singer;
	@Override
	public List<Singer> getListSession() {
		return this.singer.findAll();
	}

	@Override
	public Optional<Singer> FindOne(Integer id) {
		return this.singer.findById(id);
	}

	@Override
	public Singer getOne(Integer id) {
		return this.singer.getOne(id);
	}

	@Override
	public Singer SaveorUpdate(Singer singer) {
		return this.singer.save(singer);
	}

	@Override
	public void delete(Integer id) {
		this.singer.deleteById(id);
	}

}
