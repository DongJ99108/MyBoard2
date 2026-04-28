package com.green.menus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.menus.dto.MenuDTO;
import com.green.menus.mapper.MenuMapper;

@Controller
public class MenuController {
	@Autowired
	private MenuMapper menuMapper;
	
	@RequestMapping("/Menus/List")
	public String list( Model model ) {
		List<MenuDTO> menuList = menuMapper.getMenuList();
		
		model.addAttribute("msg", "추임새");
		model.addAttribute("menuList", menuList);
		
		return "menus/list";
		
	} // list end
	
	@RequestMapping("/Menus/WriteForm")
	public String writeForm() {
		return "menus/write";
	}
	
	
	@RequestMapping("/Menus/Write")
	public String write( MenuDTO menuDTO ) {
		menuMapper.insertMenu( menuDTO );
		return "redirect:/Menus/List";
	}
	
	
	
	
}















