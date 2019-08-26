package club.wlqzz.service;


import club.wlqzz.pojo.Checkout;

import java.util.List;

public interface CheckoutService {
public void insertcheckout(Checkout checkout);
public List<Checkout> getallcheckout();
public void deletecheckout(Integer id);
}
