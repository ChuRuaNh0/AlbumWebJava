package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Album;
import com.example.demo.entity.User;
import com.example.demo.repository.AlbumRepository;

@Service
public class AlbumServiceImpl implements AlbumService {

	@Autowired
	private AlbumRepository albumRepository;

	@Override
	public List<Album> findAllAlbums() {
		// TODO Auto-generated method stub
		return albumRepository.findAll();
	}

	@Override
	public Album addAlbum(Album newAlbum, long id_user) {
		// TODO Auto-generated method stub
		newAlbum.setId_user(id_user);
		return albumRepository.save(newAlbum);
	}

	@Override
	public Album updateAlbum(Album abulm, int id_album) {
		// TODO Auto-generated method stub
		Album album0id = albumRepository.getOne(id_album);
		if (album0id != null) {
			album0id.setId(abulm.getId());
			album0id.setName_abulm(abulm.getName_abulm());
			album0id.setInfor(abulm.getInfor());
			album0id.setSotrang(abulm.getNam());
		} else {
			return null;
		}

		return albumRepository.save(album0id);  //save đối tượng cũ là lưu được rồi
	}

	@Override
	public boolean deleteAlbumByName(String name) {
		List<Album> listAlbum = albumRepository.findByName_abulm(name);
		for (int i = 0; i < listAlbum.size(); i++) {
			albumRepository.delete(listAlbum.get(i));
		}
//		albumRepository.deleteAll(listAlbum);
		return true;
	}

}
