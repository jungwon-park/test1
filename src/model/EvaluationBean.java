package model;


public class EvaluationBean {
	
	private String id;
	private String bookcode;
	private String evaluation;
	private int score;
	
	public EvaluationBean(String id, String bookcode, int score, String evaluation) {
		super();
		this.id = id;
		this.bookcode = bookcode;
		this.score = score;
		this.evaluation = evaluation;
	}

	public EvaluationBean() {
		super();
	}

	@Override
	public String toString() {
		return "EvaluationBean [id=" + id + ", bookcode=" + bookcode + ", score=" + score + ", evaluation=" + evaluation
				+ "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBookcode() {
		return bookcode;
	}

	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
	
	
	
}
