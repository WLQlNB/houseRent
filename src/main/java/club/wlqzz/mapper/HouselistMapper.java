package club.wlqzz.mapper;

import club.wlqzz.pojo.Houselist;
import club.wlqzz.pojo.QueryVo;

import java.util.List;


public interface HouselistMapper {
    List<Houselist> selectAll();

    Integer findhouselistByVoCount(QueryVo vo);

    Houselist findhouseid(String houseid);

    void inserthouse(Houselist houselist);

    void deletehouse(int id);

    Houselist findid(int id);

    Houselist findhouseidupdate(Houselist houselist);

    void updatehouse(Houselist houselist);

    void updatehousestatus(Houselist houselist);

    void deletehousebyhouseid(String house_id);

    void updatestatus(Houselist houselist);
}
