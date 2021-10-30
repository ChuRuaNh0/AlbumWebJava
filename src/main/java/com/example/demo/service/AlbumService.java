package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Album;

public interface AlbumService {
	
	//0. Get all abulm
	List<Album> findAllAlbums();
	
	//1. Create a abulm
	Album addAlbum(Album newAlbum, long id_user);
	
	//2. Updata a album
	Album updateAlbum(Album abulm, int id_album);
	
	//3. Delete Abulm by name
	boolean deleteAlbumByName(String name);
	
}
