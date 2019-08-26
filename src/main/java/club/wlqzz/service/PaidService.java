package club.wlqzz.service;

import club.wlqzz.pojo.Paid;
import club.wlqzz.pojo.QueryVo;
import club.wlqzz.pojo.Zulist;

import java.util.List;

public interface PaidService {
	public List<Paid> selectall(QueryVo vo);
	public Double selectsum(QueryVo vo);
	public void deletepaid(Integer id);
	public List<Zulist> findzuuserlist() throws Exception;
	public Zulist findzukezulist(Integer id);
	
}
