package club.wlqzz.service.impl;

import club.wlqzz.mapper.HetongMapper;
import club.wlqzz.pojo.Hetong;
import club.wlqzz.service.HetongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class HetongServiceImpl implements HetongService {
    @Autowired
    private HetongMapper hetongMapper;

    @Override
    public void inserthetong(Hetong hetong) {
        hetongMapper.inserthetong(hetong);

    }

    @Override
    public Hetong findhetong(String house_id) {
        return  hetongMapper.findhetong(house_id);
    }

    @Override
    public void updatehetong(Hetong hetong) {
        hetongMapper.updatehetong(hetong);
    }

    @Override
    public void deletehetong(String house_id) {
        // TODO Auto-generated method stub
        hetongMapper.deletehetong(house_id);

    }

}
