package com.bitacademy.guestbook.dao.test;

import java.util.List;

import com.bitacademy.guestbook.vo.GuestbookVo;
import com.bitacademy.guestbook.dao.GuestbookDao;

public class TestGuestDao {
	public static void main(String[] args) {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("김준호");
		vo.setPassword("1234");
		vo.setMessage("메세지입니다");
		testInert(vo);
		
//		testFindAll();
		
//		vo.setNo((long) 3);
//		vo.setPassword("1234");
//		testDelect(vo);
//		
//		testFindAll();
		
		
	}
	
	public static boolean testDelect(GuestbookVo vo) {
		return new GuestbookDao().delete(vo);
	}
	
	public static boolean testInert(GuestbookVo vo) {
		return new GuestbookDao().insert(vo);
	}
	
	public static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}

}
