package club.wlqzz.mapper;

import club.wlqzz.pojo.Apply;
import club.wlqzz.pojo.Applyout;

import java.util.List;


public interface ApplyMapper {
    void insertapply(Apply apply);

    public List<Apply> findapplylist() throws Exception;

    Apply findbyhouse_id(String house_id);

    public void deletebyhouse_id(String house_id);

    public void updateapplyout(Applyout applyout);
}
