package club.wlqzz.service;

import club.wlqzz.pojo.User;
import java.util.List;

public interface UserService {

	public List<User> userList() throws Exception;
	public User login(User user) throws Exception;
	
}
