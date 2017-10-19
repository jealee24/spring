package com.newlecture.webprj.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.newlecture.webprj.dao.NoticeDao;
import com.newlecture.webprj.vo.Notice;



public class NLMemberShipService implements MemberShipService{
	
	private NoticeDao noticeDao;
	
	@Autowired
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	@Override
	@Transactional
	public void insertAndPointUPofMember(Notice n, String uid) throws ClassNotFoundException, SQLException {
		/*String sql = "INSERT INTO NOTICES(SEQ, TITLE, CONTENT, WRITER, REGDATE, HIT, FILESRC) VALUES( "
			+ "(SELECT MAX(TO_NUMBER(SEQ))+1 FROM NOTICES), :title, :content, 'newlec', SYSDATE, 0, :fileSrc)";
			
		getSimpleJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(n));*/
			
		noticeDao.insert(n);
		//n.setTitle("test1222");
		//noticeDao.insert(n);
		/*String sqlPoint = "UPDATE \"MEMBER\" SET POINT = POINT + 1 WHERE \"UID\" = ?";
		getSimpleJdbcTemplate().update(sqlPoint, uid);	*/
		
		/*transactionTemplete.execute(new TransactionCallbackWithoutResult() {
			
			@Override
			protected void doInTransactionWithoutResult(TransactionStatus arg0) {
				getSimpleJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(n));	
				getSimpleJdbcTemplate().update(sqlPoint, uid);				
			}
		});*/
		
		
		
		/*TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status =  transactionManager.getTransaction(def);
		
		try{
			getSimpleJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(n));	
			getSimpleJdbcTemplate().update(sqlPoint, uid);
		
			transactionManager.commit(status);
		}catch(DataAccessException ex){			
			transactionManager.rollback(status);
			throw ex;
		}*/
		
		
	}

}
