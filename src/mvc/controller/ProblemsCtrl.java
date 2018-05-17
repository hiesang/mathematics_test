package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.service.ProblemsService;

@Controller
@RequestMapping("/problems.do")
public class ProblemsCtrl {
	@Autowired(required=false)
	private ProblemsService problemsService;
	
	@RequestMapping(params="method=print")
	@ResponseBody
	public String problem() {
		return problemsService.problem();
	}
}
