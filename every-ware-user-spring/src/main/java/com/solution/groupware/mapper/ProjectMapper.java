package com.solution.groupware.mapper;

import java.util.HashMap;
import java.util.List;

import com.solution.groupware.vo.ProjectVO;

public interface ProjectMapper {
	//select
	public List<ProjectVO> selectProjectList(HashMap<String, Object> param) throws Exception; //프로젝트 목록 조회
	
	//insert
	public void insertProject(ProjectVO param) throws Exception; //프로젝트 추가
}
