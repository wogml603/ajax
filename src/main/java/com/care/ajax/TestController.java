package com.care.ajax;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
	@GetMapping(value="rest",
			produces = "application/text; charset=utf8")
	public String get() {
		return "get 데이터 요청";
	}
	@PostMapping(value="rest",
			produces = "application/text; charset=utf8")
	public String post() {
		return "post 데이터 저장";
	}
	@PutMapping(value="rest",
			produces = "application/text; charset=utf8")
	public String put() {
		return "put 데이터 수정";
	}
	@DeleteMapping(value="rest",
			produces = "application/text; charset=utf8")
	public String del() {
		return "del 데이터 삭제";
	}
	
	Map<String, InfoDTO> DBmap = 
						new HashMap<String, InfoDTO>(); 
	int cnt = 0;
	@GetMapping(value="users",
			produces = "application/json; charset=utf8")
	public ArrayList<InfoDTO> users(){
		ArrayList<InfoDTO> list = new ArrayList<InfoDTO>();
		for(int i=cnt; i< cnt+10 ; i++) {
			InfoDTO dto = new InfoDTO();
			dto.setName("홍길동"+i);
			dto.setAge("0"+i);
			list.add(dto);
			DBmap.put("홍길동"+i,dto);
		}
		cnt+=10;
		return list;
	}
	@GetMapping(value="user/{uId}",
			produces = "application/json; charset=utf8")
	public InfoDTO user(@PathVariable("uId") String id) { //"uId의 값을 id로 받겠다.

		return DBmap.get(id);
		
	}
	@PutMapping(value="modify",
			produces = "application/json; charset=utf8")
	public void modify(@RequestBody InfoDTO dto) {
		DBmap.replace(dto.getName(), dto);
	}
	@PostMapping(value="save",
			produces = "application/json; charset=utf8")
	public void save(@RequestBody Map<String, Object> map) {
		System.out.println(map.get("id"));
		System.out.println(map.get("pwd"));
		System.out.println(map.get("addr"));
		System.out.println(map.get("age"));
		System.out.println(map.get("phone"));
	}
}













