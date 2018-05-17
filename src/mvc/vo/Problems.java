package mvc.vo;

public class Problems {
	private String problem_text;
	private int type;
	private String choices;
	private String answer;
	
	public Problems() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Problems(String problem_text, int type, String choices, String answer) {
		super();
		this.problem_text = problem_text;
		this.type = type;
		this.choices = choices;
		this.answer = answer;
	}

	public String getProblem_text() {
		return problem_text;
	}

	public void setProblem_text(String problem_text) {
		this.problem_text = problem_text;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getChoices() {
		return choices;
	}

	public void setChoices(String choices) {
		this.choices = choices;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	
}
