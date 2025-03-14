package Dao;

import Model.User;

import java.util.List;

public interface UserDao {
    int addUser(User user);
    User getUserByEmail(String email);
    List<User> getAllUsers();
    boolean updateUser(User user);
    boolean deleteUser(int id);
}
