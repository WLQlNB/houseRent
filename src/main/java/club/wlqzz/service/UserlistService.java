package club.wlqzz.service;

import club.wlqzz.pojo.Userlist;

import java.util.List;

public interface UserlistService {
    Userlist findhasuserlist(Integer user_id);

    Userlist checkuserlist(String idcard);

    void insertuserlist(Userlist userlist);

    void updateuserlist(Userlist userlist);

    Userlist finduserlistupdate(Userlist userlist);

    List<Userlist> getUserzuList(Integer id);

    List<Userlist> getmycheckout(Integer id);

    List<Userlist> getmyapply(Integer id);

    List<Userlist> getmyapplyout(Integer id);

    List<Userlist> findalluserlist();

    public void deleteuserlist(Integer id);
}
