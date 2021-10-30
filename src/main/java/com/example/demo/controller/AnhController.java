package com.example.demo.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.entity.Anh_Detail;
import com.example.demo.repository.AnhRepository;
import com.example.demo.validator.PhotoUploadUtil;

@Controller
public class AnhController {
	
	@Autowired
	private AnhRepository anhRepo;
	
	@PostMapping({"/save/anh"})
    public RedirectView save(@RequestParam("id_anh")  long id_anh
            , @RequestParam(value = "anh",required = false)  MultipartFile anh) throws IOException {
        System.out.println("save album !!!!");
		String anhMain = StringUtils.cleanPath(anh.getOriginalFilename());
        Anh_Detail image ;
        if(id_anh != 0){
            image =  anhRepo.getOne(id_anh); // đây là giành cho trường hợp update, lấy ra thằng hiện tại
        } else{
            image = new Anh_Detail();  // chuc nang them moi album
        }

        image.setId(id_anh);

        String uploadDir = "user-photos/";
        String originNameFile = anh.getOriginalFilename();
        if( originNameFile != null && !originNameFile.equals("")){
            String anhName = StringUtils.cleanPath(originNameFile);
            image.setAnh(anhName);
            PhotoUploadUtil.savePhoto(uploadDir, anhName, anh);
        }
        anhRepo.save(image);
        return new RedirectView("/album_detail", true);
    }

}
