package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.entity.Album;
import com.example.demo.entity.User;
import com.example.demo.service.AlbumService;
import com.example.demo.service.UserService;

@Controller
public class TestController {
	
	@Autowired
	private AlbumService albumService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping(value="/album/getAll")
	private List<Album> getAll(){
		return albumService.findAllAlbums();
	}
	
	@GetMapping(value="/trangchu")
	public ModelAndView trangChu() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		return modelAndView;
	}
	
	@GetMapping(value="/display/album")
	public ModelAndView displayListAlbum(Model model) {
		ModelAndView view = new ModelAndView();
		List<Album> listResult = albumService.findAllAlbums();
		
		// push list in view jsp file
		model.addAttribute("listAlbum", listResult);
		model.addAttribute("album",new Album());
		view.setViewName("gallery");
		
		return view;
	}
	
	@GetMapping(value="/display/user")
	public ModelAndView displayListUser(Model model) {
		ModelAndView view = new ModelAndView();
		List<User> listUser = userService.findAlUsers();
		
		model.addAttribute("listUser", listUser);
		view.setViewName("user");
		return view;
	}
	
	
	//Save album
	@PostMapping(value="save/{id_user}/album")
	public RedirectView saveAlbum(Album album, @PathVariable long id_user) {
		//save album
		
		return new RedirectView("/user/" + album.getId_user() + "/album",true);
	}
	
	
	@GetMapping(value="/display/{id_user}/album")
	public ModelAndView displayListAlbum_detail(Model model) {
		ModelAndView view = new ModelAndView();
		List<Album> listAlbum = albumService.findAllAlbums();
		
		model.addAttribute("listAlbum", listAlbum);
		model.addAttribute("album",new Album());
		view.setViewName("gallery");
		return view;
	}
	
	
	@GetMapping("footer")
	public String footer() {
		return "footer/footer";
	}
	
	@GetMapping("header")
	public String header() {
		return "header/header";
	}
	
	
	// delete album by id
	@DeleteMapping("/album/delete-byID")
	@ResponseBody
	public boolean deleteById(@RequestParam("name")String name) {
		return albumService.deleteAlbumByName(name);
	}
}
