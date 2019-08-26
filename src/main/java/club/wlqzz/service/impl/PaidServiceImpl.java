package club.wlqzz.service.impl;

import java.util.List;

import club.wlqzz.mapper.PaidMapper;
import club.wlqzz.mapper.ZulistMapper;
import club.wlqzz.pojo.Paid;
import club.wlqzz.pojo.QueryVo;
import club.wlqzz.pojo.Zulist;
import club.wlqzz.service.PaidService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PaidServiceImpl implements PaidService {
    @Autowired
    private PaidMapper paidMapper;
    @Autowired
    private ZulistMapper zulistMapper;

    @Override
    public List<Paid> selectall(QueryVo vo) {
        List<Paid> list = paidMapper.selectall(vo);
        return list;
    }

    @Override
    public Double selectsum(QueryVo vo) {
        Double sum = paidMapper.selectsum(vo);
        return sum;
    }

    @Override
    public void deletepaid(Integer id) {
        paidMapper.deletepaid(id);

    }

    @Override
    public List<Zulist> findzuuserlist() throws Exception {
        List<Zulist> list = zulistMapper.findzuuserlist();
        return list;
    }

    @Override
    public Zulist findzukezulist(Integer id) {
        Zulist zulist = zulistMapper.findzukezulist(id);
        return zulist;
    }


}
