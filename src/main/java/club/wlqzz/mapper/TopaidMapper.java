package club.wlqzz.mapper;

import club.wlqzz.pojo.QueryVo;
import club.wlqzz.pojo.Topaid;

import java.util.List;

public interface TopaidMapper {
    public void inserttopaid(Topaid topaid);

    public List<Topaid> findtopaid(QueryVo vo);

    public Topaid findbyid(Integer id);

    public void deletetopaid(Integer id);
}
