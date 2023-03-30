package com.solution.groupware.setting;

public class ConstValues {
	public final static String SESSION_INFO = "sessionInfo";
	
	public static enum GRP_CODE {
		PROJECT_WORKFLOW("PROJECT_WORKFLOW"),
		WORK_WORKFLOW("WORK_WORKFLOW"),
		COMPANY_ROLE("COMPANY_ROLE");
		
		private String value;
		
		GRP_CODE(String value){
			this.value = value;
		}
		
		public String getValue() {
			return value;
		}
		
	}
}
