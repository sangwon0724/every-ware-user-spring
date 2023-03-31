package com.solution.groupware.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.solution.groupware.service.CommonService;
import com.solution.groupware.service.ProjectService;
import com.solution.groupware.setting.ConstValues;
import com.solution.groupware.vo.ProjectVO;
import com.solution.groupware.vo.UserVO;
import com.solution.groupware.vo.WorkFileVO;
import com.solution.groupware.vo.WorkVO;

/**
 * @packageName : 	com.solution.groupware.controller
 * @fileName    : 	ProjectController.java 
 * @author      : 	이상원 
 * @date        : 	2023.03.14
 * =========================================================== 
 * DATE               	AUTHOR        		NOTE 
 * ----------------------------------------------------------- 
 * 2023.03.14    	    이상원     	        최초 생성
 */

@Controller
@RequestMapping("/project")
public class ProjectController {
	@Autowired
	CommonService commonService;
	
	@Autowired
	ProjectService projectService;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpServletRequest request, Model model) {
		
		return "dashboard.project";
	}
	
	@GetMapping("/list")
	public String projectList(HttpServletRequest request, Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		
		try {
			model.addAttribute("list", projectService.selectProjectList(param));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/list_project";
	}
	
	@GetMapping("/detail/{project}")
	public String projectDetail(HttpServletRequest request, Model model, @PathVariable Integer project) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		
		try {
			param.put("idx", project);
			model.addAttribute("detail", projectService.selectProjectDetail(param));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/detail_project";
	}
	
	@GetMapping("/write")
	public String writeProject(HttpServletRequest request, Model model) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("grpCode", ConstValues.GRP_CODE.PROJECT_WORKFLOW.getValue());
		
		try {
			model.addAttribute("dept", commonService.selectDeptList(param));
			model.addAttribute("user", commonService.selectUserList(param));
			model.addAttribute("client", new ArrayList<String>());
			model.addAttribute("workflow", commonService.selectCodeList(param));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/write_project";
	}
	
	@PostMapping("/save")
	public String saveProject(HttpServletRequest request, Model model, ProjectVO param) {
		try {
			HttpSession session = request.getSession();
			UserVO userVO = (UserVO) session.getAttribute(ConstValues.SESSION_INFO);
			int userIdx = userVO.getIdx();
			
			param.setUserIdx(userIdx);
			
			projectService.insertProject(param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/project/list";
	}
	
	@GetMapping({"/work", "/work/{project}"})
	public String workList(HttpServletRequest request, Model model, @PathVariable(required = false) Integer project) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		if (project != null) {
			param.put("projectIdx", project);
		}
		
		try {
			model.addAttribute("list", projectService.selectWorkList(param));
			model.addAttribute("project", projectService.selectProjectListForMenu(param));
			model.addAttribute("currentProject", project);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/list_work";
	}
	
	@GetMapping({"/work/detail/{idx}", "/work/detail/{project}/{idx}"})
	public String workDetail(HttpServletRequest request, Model model, @PathVariable(required = false) Integer project, @PathVariable Integer idx) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("grpCode", ConstValues.GRP_CODE.WORK_WORKFLOW.getValue());
		param.put("idx", idx);
		
		try {
			model.addAttribute("detail", projectService.selectWorkDetail(param));
			model.addAttribute("project", projectService.selectProjectListForMenu(param));
			model.addAttribute("workflow", commonService.selectCodeList(param));
			model.addAttribute("user", commonService.selectUserList(param));
			model.addAttribute("currentProject", project);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/detail_work";
	}
	
	@GetMapping({"/work/write", "/work/write/{project}"})
	public String writeWork(HttpServletRequest request, Model model, @PathVariable(required = false) Integer project) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("grpCode", ConstValues.GRP_CODE.WORK_WORKFLOW.getValue());
		param.put("projectIdx", project);
		
		try {
			model.addAttribute("project", projectService.selectProjectListForMenu(param));
			model.addAttribute("workflow", commonService.selectCodeList(param));
			model.addAttribute("user", commonService.selectUserList(param));
			model.addAttribute("currentProject", project);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/project/write_work";
	}
	
	@PostMapping("/work/save")
	public String saveWork(HttpServletRequest request, Model model, WorkVO param) {
		try {
			HttpSession session = request.getSession();
			UserVO userVO = (UserVO) session.getAttribute(ConstValues.SESSION_INFO);
			int userIdx = userVO.getIdx();
			
			param.setUserIdx(userIdx);
			
			projectService.insertWork(param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/project/work";
	}
	
	@PostMapping("/work/reply/save")
	public String saveWorkReply(HttpServletRequest request, Model model, WorkVO param) {
		try {
			/*HttpSession session = request.getSession();
			UserVO userVO = (UserVO) session.getAttribute(ConstValues.SESSION_INFO);
			int userIdx = userVO.getIdx();
			
			param.setUserIdx(userIdx);
			
			projectService.insertWork(param);*/
			
			//temp_id를 통해서 파일 데이터의 work_reply_idx 채우기
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/project/work";
	}
	
	@ResponseBody
	@PostMapping(value="/work/reply/file/save", produces = "application/json; charset=utf8")
	public String saveWorkReplyFile(HttpServletRequest request, @RequestParam("file") MultipartFile multipartFile, WorkVO param) {
		JsonObject jsonObject = new JsonObject();
		
		String fileRoot = "C:\\summernote_image\\"; // 외부경로
		
		// 내부경로로 저장
		//String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		//String fileRoot = contextRoot+"resources/fileupload/";
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/image/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
			
			HttpSession session = request.getSession();
			UserVO userVO = (UserVO) session.getAttribute(ConstValues.SESSION_INFO);
			int userIdx = userVO.getIdx();
			
			WorkFileVO workFileVO = new WorkFileVO();
			workFileVO.setProjectIdx(param.getProjectIdx());
			workFileVO.setWorkIdx(param.getIdx());
			workFileVO.setUserIdx(userIdx);
			workFileVO.setFilePath(savedFileName);
			workFileVO.setFileName(originalFileName);
			workFileVO.setFileSize(0);
			workFileVO.setFileType(extension);
			workFileVO.setTempId(param.getTempId());
			
			projectService.insertWorkFile(workFileVO);
			
		} catch (IOException e) {
			System.out.println("체크 : 1");
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("체크 : 2");
			e.printStackTrace();
		}
			
		String result = jsonObject.toString();
		return result;
	}
	
	//회계
	@GetMapping("/accounting")
	public String accounting(HttpServletRequest request, Model model) {
		
		return "accounting.project";
	}
}
