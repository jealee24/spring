package com.newlecture.webprj.service;

import java.sql.SQLException;

import com.newlecture.webprj.vo.Notice;

public interface MemberShipService {
	// 커밋테스트4
	public void insertAndPointUPofMember(Notice n, String uid) throws ClassNotFoundException, SQLException;
}
