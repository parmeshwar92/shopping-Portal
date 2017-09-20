package net.param.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
@RequestMapping(value={"/","/home","index"})
public ModelAndView index(){
	ModelAndView mv=new ModelAndView("page");
	mv.addObject("title", "Home");
	mv.addObject("userClickHome", true);
	return mv;
}
@RequestMapping(value="/about")
public ModelAndView about(){
	ModelAndView mv=new ModelAndView("page");
	mv.addObject("title", "about us");
	mv.addObject("userClickAbout", true);
	return mv;
}
@RequestMapping(value="/listProducts")
public ModelAndView viewProduct(){
	ModelAndView mv=new ModelAndView("page");
	mv.addObject("title", "view Product");
	mv.addObject("userClickViewProduct", true);
	return mv;
}
@RequestMapping(value="/contact")
public ModelAndView contact(){
	ModelAndView mv=new ModelAndView("page");
	mv.addObject("title", "contact us");
	mv.addObject("userClickContact", true);
	return mv;
}


}
