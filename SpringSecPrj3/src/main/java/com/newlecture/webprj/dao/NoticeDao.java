package com.newlecture.webprj.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;

import com.newlecture.webprj.vo.Notice;


public interface NoticeDao{
	public int getCount(String field, String query) throws ClassNotFoundException, SQLException;;	
	public List<Notice> getNotices(int page, String field, String query) throws ClassNotFoundException, SQLException;
	
	@Delete("DELETE NOTICES WHERE SEQ=#{seq}")
	public int delete(String seq) throws ClassNotFoundException, SQLException;	
	
	@Update("UPDATE NOTICES SET TITLE=#{title}, CONTENT=#{content}, FILESRC=#{fileSrc} WHERE SEQ=#{seq}")
	public int update(Notice notice) throws ClassNotFoundException, SQLException;	
	public Notice getNotice(String seq) throws ClassNotFoundException, SQLException;
	public int insert(Notice n) throws ClassNotFoundException, SQLException;
	public void hitUp(String seq);
	public int getHit(String seq);
}
