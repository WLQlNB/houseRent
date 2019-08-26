package club.wlqzz.service.impl;


import club.wlqzz.mapper.CheckoutMapper;
import club.wlqzz.pojo.Checkout;
import club.wlqzz.service.CheckoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CheckoutServiceImpl implements CheckoutService {

    @Autowired
    private CheckoutMapper checkoutMapper;

    @Override
    public void insertcheckout(Checkout checkout) {
        checkoutMapper.insertcheckout(checkout);

    }

    @Override
    public List<Checkout> getallcheckout() {
        List<Checkout> checkout = checkoutMapper.getallcheckout();
        return checkout;
    }

    @Override
    public void deletecheckout(Integer id) {

        checkoutMapper.deletecheckout(id);
    }


}
