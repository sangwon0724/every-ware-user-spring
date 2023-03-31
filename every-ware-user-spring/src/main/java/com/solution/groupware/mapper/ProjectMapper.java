package com.solution.groupware.mapper;

import java.util.HashMap;
import java.util.List;

import com.solution.groupware.vo.ProjectVO;
import com.solution.groupware.vo.WorkFileVO;
import com.solution.groupware.vo.WorkReplyVO;
import com.solution.groupware.vo.WorkVO;

public interface ProjectMapper {
	//select
	public List<ProjectVO> selectProjectList(HashMap<String, Object> param) throws Exception; //프로젝트 목록 조회
	public List<ProjectVO> selectProjectListForMenu(HashMap<String, Object> param) throws Exception; //프로젝트 목록 조회 (메뉴용)
	public ProjectVO selectProjectDetail(HashMap<String, Object> param) throws Exception; //프로젝트 상세 조회
	public List<WorkVO> selectWorkList(HashMap<String, Object> param) throws Exception; //일감 목록 조회
	public WorkVO selectWorkDetail(HashMap<String, Object> param) throws Exception; //일감 상세 조회
	public List<WorkReplyVO> selectWorkReplyList(HashMap<String, Object> param) throws Exception; //일감 댓글 목록 조회
	
	//insert
	public void insertProject(ProjectVO param) throws Exception; //프로젝트 추가
	public void insertWork(WorkVO param) throws Exception; //일감 추가
	public void insertWorkReply(WorkReplyVO param) throws Exception; //일감 댓글 추가
	public void insertWorkFile(WorkFileVO param) throws Exception; //파일 저장
	
	//updated
	public void updateWorkState(WorkReplyVO param) throws Exception; //일감 상태 수정
	public void updateWorkFileState(WorkVO param) throws Exception; //일감 파일 상태 수정
	public void updateWorkFileStateForReply(WorkReplyVO param) throws Exception; //일감 파일 상태 수정
	
}
