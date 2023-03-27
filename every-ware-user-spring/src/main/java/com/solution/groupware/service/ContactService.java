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
	
	//수신함 목록 조회
	public List<ContactVO> selectReceiveList(HashMap<String, Object> param) throws Exception {
		return contactMapper.selectReceiveList(param);
	};
	
	//읽음 처리
	public void updateReadStatus(HashMap<String, Object> param) throws Exception {
		contactMapper.updateReadStatus(param);
	}; 
	
	//송신함 목록
	public List<ContactVO> selectSendList(HashMap<String, Object> param) throws Exception {
		return contactMapper.selectSendList(param);
	};
	
	//전체함 목록
	public List<ContactVO> selectAllList(HashMap<String, Object> param) throws Exception {
		return contactMapper.selectAllList(param);
	};
	
	//휴지통 목록
	public List<ContactVO> selectTrashList(HashMap<String, Object> param) throws Exception {
		return contactMapper.selectTrashList(param);
	};
	
	//게시글 추가
	public void insertPost(HashMap<String, Object> param) throws Exception {
		contactMapper.insertPost(param);
		contactMapper.insertStatus(param);
	}
}
