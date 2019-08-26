package club.wlqzz.mapper;

import club.wlqzz.pojo.Paid;
import club.wlqzz.pojo.QueryVo;

import java.util.List;

public interface PaidMapper {
    public List<Paid> selectall(QueryVo vo);

    public Double selectsum(QueryVo vo);

    public void deletepaid(Integer id);

    public void insertpaid(Paid paid);
}
