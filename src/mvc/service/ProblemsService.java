package mvc.service;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.repository.ProblemsDAO;
import mvc.vo.Problems;

@Service
public class ProblemsService {
	@Autowired(required=false)
	private ProblemsDAO problemsDAO;
	
	public String problem(){
		ArrayList<Problems> problemsList = problemsDAO.problem();
		JSONObject jsonObj = null;
		JSONArray jsonArr = new JSONArray();
		
		for(Problems pro:problemsList) {
			jsonObj = new JSONObject();
			jsonObj.put("problem_text", pro.getProblem_text());
			jsonObj.put("type", pro.getType());
			jsonObj.put("choices", pro.getChoices());
			jsonObj.put("answer", pro.getAnswer());
			jsonArr.add(jsonObj);
		}
		return jsonArr.toString();
	}
	
}
