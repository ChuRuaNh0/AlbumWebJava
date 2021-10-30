package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Anh_Detail;

public interface AnhService {
	
	//0. Get all anh
	List<Anh_Detail> findAllAlbums();
	
	//1. Create a anh
	Anh_Detail Create(Anh_Detail newAnh, int id_album);
	
	//2. Updata a album
	Anh_Detail updateAlbum(Anh_Detail anh, long id_anh);
	
	//3. Delete Abulm by name
	boolean deleteAnhById(Iterable<Long> id_anh);
	
}
