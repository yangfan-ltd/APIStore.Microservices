package com.yunmishu365;

public class DoorController {
	@RequestMapping("/doorList")
	public String doorList() {
		
		return "doorlist";
	}
}
