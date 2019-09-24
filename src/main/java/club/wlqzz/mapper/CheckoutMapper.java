package club.wlqzz.mapper;

import club.wlqzz.pojo.Checkout;

import java.util.List;

public interface CheckoutMapper {
    void insertcheckout(Checkout checkout);

    List<Checkout> getallcheckout();

    void deletecheckout(Integer id);
}
