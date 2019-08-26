package club.wlqzz.service.impl;

import java.util.List;

import club.wlqzz.mapper.PaidMapper;
import club.wlqzz.mapper.TopaidMapper;
import club.wlqzz.pojo.Paid;
import club.wlqzz.pojo.QueryVo;
import club.wlqzz.pojo.Topaid;
import club.wlqzz.service.TopaidService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class TopaidServiceImpl implements TopaidService {
    @Autowired
    private TopaidMapper topaidMapper;
    @Autowired
    private PaidMapper paidMapper;

    @Override
    public void inserttopaid(Topaid topaid) {
        topaid.setStatus("租金未缴");
        topaidMapper.inserttopaid(topaid);
    }

    @Override
    public List<Topaid> findtopaid(QueryVo vo) {
        List<Topaid> list = topaidMapper.findtopaid(vo);
        return list;
    }

    @Override
    public Topaid findbyid(Integer id) {
        Topaid topaid = topaidMapper.findbyid(id);
        return topaid;
    }

    @Override
    public void gotopay(Integer id, Paid paid) {
        paidMapper.insertpaid(paid);
        topaidMapper.deletetopaid(id);
    }

}
