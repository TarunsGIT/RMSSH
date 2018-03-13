package in.co.mss.rmssh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Contains navigation logics for ErrorCtl.
 * 
 * @author Session Facade
 * @version 1.0
 * 
 */
@Controller
@RequestMapping("/Error")
public class ErrorCtl {

	@RequestMapping(method = RequestMethod.GET)
	public String display(ModelMap model) {
		return "Error";
	}

}
