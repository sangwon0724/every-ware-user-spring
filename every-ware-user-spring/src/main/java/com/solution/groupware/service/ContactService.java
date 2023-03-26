package com.solution.groupware.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solution.groupware.mapper.ContactMapper;
import com.solution.groupware.vo.ContactVO;

@Service
public class ContactService {
	@Autowired
	private ContactMapper contactMapper;
	
	//게시글 목록
	public List<ContactVO> selectReceiveList(HashMap<String, Object> param) throws Exception {
		return contactMapper.selectReceiveList(param);
	};
	
	//게시글 목록
	public List<ContactVO> selectSendList(HashMap<String, Object> param) throws Exception {
		return contactMapper.selectSendList(param);
	};
	
	//게시글 목록
	public List<ContactVO> selectAllList(HashMap<String, Object> param) throws Exception {
		return contactMapper.selectAllList(param);
	};
	
	//게시글 목록
	public List<ContactVO> selectTrashList(HashMap<String, Object> param) throws Exception {
		return contactMapper.selectTrashList(param);
	};
}
