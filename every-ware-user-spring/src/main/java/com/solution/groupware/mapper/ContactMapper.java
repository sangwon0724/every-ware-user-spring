package com.solution.groupware.mapper;

import java.util.HashMap;
import java.util.List;

import com.solution.groupware.vo.ContactVO;

public interface ContactMapper {
	//select
	public List<ContactVO> selectReceiveList(HashMap<String, Object> param) throws Exception; //게시글 목록
	public List<ContactVO> selectSendList(HashMap<String, Object> param) throws Exception; //게시글 목록
	public List<ContactVO> selectAllList(HashMap<String, Object> param) throws Exception; //게시글 목록
	public List<ContactVO> selectTrashList(HashMap<String, Object> param) throws Exception; //게시글 목록
}
