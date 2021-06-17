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
	
	/* ����, ������ ���� ����Ʈ �ҷ����� */
	/* ��ȸ�ϱ� */
	public ScheduleDto get(int idx);
	
	/* �����ϱ� */
	public int update(ScheduleDto scheduleDto);
	
	/* �����ϱ� */
	public int delete(ScheduleDto scheduleDte);
	
	
}
