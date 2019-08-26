package club.wlqzz.mapper;


import club.wlqzz.pojo.Applyout;

import java.util.List;

public interface ApplyoutMapper {
    public void insertapplyout(Applyout applyout);

    List<Applyout> findallapplyout();

    public void updateapplyout(Applyout applyout);

    public void updateapplyoutbyhouse(Applyout applyout);

    public Applyout findbyid(Integer id);

    public void deleteapplyout(Integer id);
}
