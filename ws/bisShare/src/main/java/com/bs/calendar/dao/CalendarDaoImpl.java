package com.bs.calendar.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bs.calendar.vo.CalendarVo;
import com.bs.common.PageVo;

@Repository
public class CalendarDaoImpl implements CalendarDao{

	//일정 작성
	@Override
	public int insertCalendar(SqlSessionTemplate sst, CalendarVo vo) {
		return sst.insert("calendarMapper.insertCalendar", vo);
	}

	//일정 삭제
	@Override
	public int delete(SqlSessionTemplate sst, String no) {
		return sst.update("calendarMapper.deleteCalendar", no);
	}

	//일정 수정
	@Override
	public int updateOne(SqlSessionTemplate sst, CalendarVo vo) {
		return sst.update("calendarMapper.updateOne", vo);
	}

	//일정 목록 조회
	@Override
	public List<CalendarVo> selectList(SqlSessionTemplate sst, PageVo pv) {
		
		int offset = (pv.getCurrentPage()-1 * pv.getBoardLimit());
		RowBounds rb = new RowBounds(offset, pv.getBoardLimit());
		
		return sst.selectList("calendarMapper.selectList", null, rb);
	}

	//일정 갯수 조회
	@Override
	public int selectCountAll(SqlSessionTemplate sst) {
		return sst.selectOne("calendarMapper.selectCountAll");
	}

}
