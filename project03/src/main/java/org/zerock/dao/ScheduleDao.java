package org.zerock.dao;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.data.DateData;
import org.zerock.dto.ScheduleDto;


public interface ScheduleDao {
	public int schedule_add(ScheduleDto scheduleDto);
	public int before_schedule_add_search(ScheduleDto scheduleDto);
	public ArrayList<ScheduleDto> schedule_list(DateData dateData);
	
	/* 수정, 삭제를 위한 리스트 불러오기 */
	/* 조회하기 */
	public ScheduleDto get(int idx);
	
	/* 수정하기 */
	public int update(ScheduleDto scheduleDto);
	
	/* 삭제하기 */
	public int delete(ScheduleDto scheduleDte);
	
	
}
