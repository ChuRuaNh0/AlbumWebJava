package com.example.demo.repository;


import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Album;


@Repository
public interface AlbumRepository extends JpaRepository<Album, Integer>{

	@Query(value = "select * from abulm where name_abulm like CONCAT('%',:name_abulm,'%') ",nativeQuery = true)
	List<Album> findByName_abulm(@Param("name_abulm")String name_abulm);
	
//	@Query(value = "select * from album where id_user =:id_user",nativeQuery = true)
//	List<Album> findByIdUser(@Param("id_user") int id_user);



}
