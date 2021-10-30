package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Anh_Detail;


@Repository
public interface AnhRepository extends JpaRepository<Anh_Detail, Long>{
	
//	@Query(value = "select * from anh where id_anh =:id",nativeQuery = true)
//	List<Anh_Detail> findByIdAnh(@Param("id_anh") long id_anh);



}
