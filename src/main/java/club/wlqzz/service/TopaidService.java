package club.wlqzz.service;

import club.wlqzz.pojo.Paid;
import club.wlqzz.pojo.QueryVo;
import club.wlqzz.pojo.Topaid;

import java.util.List;

public interface TopaidService {
	public void inserttopaid(Topaid topaid);
	public List<Topaid> findtopaid(QueryVo vo);
	public Topaid findbyid(Integer id);
	public void gotopay(Integer id, Paid paid);
}
