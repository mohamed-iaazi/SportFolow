package Service.impl;

import Dao.UserDao;
import Dao.impl.UserDaoImp;
import Model.User;
import java.util.List;

public class UserServiceImp implements Service.UserService {

    private final UserDao userDao=new UserDaoImp();

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public User getUserById(int id) {
        return userDao.getUserById(id);
    }

    @Override
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    @Override
    public void updateUser(User user) {
      userDao.updateUser(user);
    }

    @Override
    public void deleteUser(int id) {
        userDao.deleteUser(id);
    }
}
