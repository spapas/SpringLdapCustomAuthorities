package gr.serafeim.springldapcustom;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index(){
 
		ModelAndView model = new ModelAndView("index");
		model.addObject("msg", "hello world");
		model.addObject("date", new Date() );
 
		return model;
	}
	
	@RequestMapping("/enter")
	public ModelAndView enter(){
 
		ModelAndView model = new ModelAndView("enter");
		model.addObject("msg", "you are inside");
		model.addObject("date", new Date() );
 
		return model;
	}
	
}
