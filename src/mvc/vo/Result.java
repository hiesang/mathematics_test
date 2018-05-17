package mvc.vo;

public class Result {
	private int problem_id;
    private String answer;
    private int result;
    
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Result(int problem_id, String answer, int result) {
		super();
		this.problem_id = problem_id;
		this.answer = answer;
		this.result = result;
	}

	public int getProblem_id() {
		return problem_id;
	}

	public void setProblem_id(int problem_id) {
		this.problem_id = problem_id;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}
    
    
}
