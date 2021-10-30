package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Album;
import com.example.demo.entity.Anh_Detail;
import com.example.demo.repository.AnhRepository;

@Service
public class AnhServiceImpl implements AnhService{
	
	@Autowired
	private AnhRepository anhRepo;
	
	@Override
	public List<Anh_Detail> findAllAlbums() {
		// TODO Auto-generated method stub
		return anhRepo.findAll();
	}

	@Override
	public Anh_Detail Create(Anh_Detail newAnh, int id_album) {
		// TODO Auto-generated method stub
		newAnh.setId_album(id_album);
		return anhRepo.save(newAnh);
	}

	@Override
	public Anh_Detail updateAlbum(Anh_Detail anh, long id_anh) {
		// TODO Auto-generated method stub
		Anh_Detail anh0id = anhRepo.getOne(id_anh);
		if (anh0id != null) {
			anh0id.setId(anh.getId());
			anh0id.setId_album(anh.getId_album());
			anh0id.setAnh(anh.getAnh());
		
		} else {
			return null;
		}

		return anhRepo.save(anh0id);  //save đối tượng cũ là lưu được rồi
	}

	@Override
	public boolean deleteAnhById(Iterable<Long> id_anh) {
		// TODO Auto-generated method stub
		List<Anh_Detail> listAnh= anhRepo.findAllById(id_anh);
		anhRepo.deleteAll(listAnh);
		return true;
	}

}
