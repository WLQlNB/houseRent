package club.wlqzz.mapper;


import club.wlqzz.pojo.Schedule;

import java.util.List;

public interface ScheduleMapper {
    void insertschedule(Schedule schedule);

    List<Schedule> selectAll();

    void deleteschedule(Integer id);

    void updateschedule(Schedule schedule);

    Schedule selectbyid(Integer id);
}
