package com.solution.groupware.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solution.groupware.mapper.ProjectMapper;
import com.solution.groupware.vo.ProjectVO;

@Service
public class ProjectService {
	@Autowired
	private ProjectMapper projectMapper;
	
	//프로젝트 목록 조회
	public List<ProjectVO> selectProjectList(HashMap<String, Object> param) throws Exception {
		return projectMapper.selectProjectList(param);
	};
	
	//프로젝트 목록 조회 (메뉴용)
	public List<ProjectVO> selectProjectListForMenu(HashMap<String, Object> param) throws Exception {
		return projectMapper.selectProjectListForMenu(param);
	};
	
	//프로젝트 상세 조회
	public ProjectVO selectProjectDetail(HashMap<String, Object> param) throws Exception {
		return projectMapper.selectProjectDetail(param);
	};
	
	//프로젝트 추가
	public void insertProject(ProjectVO param) throws Exception {
		projectMapper.insertProject(param);
	};
}
