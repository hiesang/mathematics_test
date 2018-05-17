package mvc.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import mvc.vo.Problems;

@Repository
public interface ProblemsDAO {
	public ArrayList<Problems> problem();
}
