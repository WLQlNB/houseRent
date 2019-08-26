package club.wlqzz.service;

import club.wlqzz.pojo.Applyout;
import club.wlqzz.pojo.Zulist;

import java.util.List;


public interface ApplyoutService {
    public void insertapplyout(Zulist zulist);

    List<Applyout> findallapplyout();

    public void updateapplyout(Applyout applyout);

    public void agreeapplyout(Integer id);

    public void deleteapplyout(Integer id);
}
