package club.wlqzz.service.impl;

import java.util.List;

import club.wlqzz.mapper.ApplyMapper;
import club.wlqzz.mapper.HouselistMapper;
import club.wlqzz.pojo.Apply;
import club.wlqzz.pojo.Houselist;
import club.wlqzz.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ApplyServiceImpl implements ApplyService {
	
	@Autowired
	private ApplyMapper applyMapper;
	@Autowired
	private HouselistMapper houselistMapper;
	
	@Override
	public void insertapply(Apply apply) {
		applyMapper.insertapply(apply);
		
	}

	@Override
	public List<Apply> findapplylist() throws Exception {
		List<Apply> apply=applyMapper.findapplylist();
		return  apply;
	}

	@Override
	public Apply findbyhouse_id(String house_id) {
		Apply apply=applyMapper.findbyhouse_id(house_id);
		return apply;
	}

	@Override
	public void deletebyhouse_id(String house_id) {
		applyMapper.deletebyhouse_id(house_id);
		
	}

	@Override
	public void refuseapply(Houselist houselist) {
		houselistMapper.updatestatus(houselist);
		applyMapper.deletebyhouse_id(houselist.getHouseid());
	}
	
	
	
	

}
