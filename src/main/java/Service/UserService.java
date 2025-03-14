package Service;

import Model.User;

import java.util.List;

public interface UserService {

    int addUser(User user);
    User getUserByEmail(String email);
    List<User> getAllUsers();
    void updateUser(User user);
    void deleteUser(int id);

}
