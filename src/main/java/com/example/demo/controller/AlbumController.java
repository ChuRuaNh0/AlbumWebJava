package com.example.demo.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.entity.Album;
import com.example.demo.repository.AlbumRepository;
import com.example.demo.service.AlbumService;
import com.example.demo.validator.PhotoUploadUtil;

@Controller
public class AlbumController {
	
	@Autowired
	private AlbumRepository albumRepo;
	
	@Autowired
	private AlbumService albumService;
	
	@GetMapping(value="/album_detail")
	public ModelAndView album_Detail() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("album_detail");
		return modelAndView;
	}
	
	@PostMapping({"/save/album"})
    public RedirectView save(@RequestParam("id")  int id, @RequestParam("infor")  String infor,@RequestParam("name_abulm")  String name_abulm, @RequestParam("nam")  int nam
            , @RequestParam(value = "anh",required = false)  MultipartFile anh) throws IOException {
        System.out.println("save album !!!!");
		String anhMain = StringUtils.cleanPath(anh.getOriginalFilename());
        Album album ;
        if(id != 0){
            album =  albumRepo.getOne(id); // đây là giành cho trường hợp update, lấy ra thằng hiện tại
        } else{
            album = new Album();  // chuc nang them moi album
        }

        album.setId(id);
        album.setInfor(infor);
        album.setName_abulm(name_abulm);

        String uploadDir = "user-photos/";
        String originNameFile = anh.getOriginalFilename();
        if( originNameFile != null && !originNameFile.equals("")){
            String anhName = StringUtils.cleanPath(originNameFile);
            album.setAnh(anhName);
            PhotoUploadUtil.savePhoto(uploadDir, anhName, anh);
        }
        albumRepo.save(album);
        return new RedirectView("/display/album", true);
    }	
}
