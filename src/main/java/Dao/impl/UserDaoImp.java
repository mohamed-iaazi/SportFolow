package Dao.impl;

import Dao.UserDao;
import Model.Member;
import Model.Trainer;
import Model.User;
import Util.DBConnection;
import Util.PasswordUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImp implements UserDao {

private Connection con= DBConnection.getConnection();
    @Override
    public int addUser(User user) {
        String adduser="insert into user(username,email,mobile,password,role) values(?,?,?,?,?)";
        String addtrainer="insert into trainer (spesialisation,idUser) values(?,?)";
        String addmember="insert into member (userId) values(?)";


        try(PreparedStatement ps=con.prepareStatement(adduser, Statement.RETURN_GENERATED_KEYS);
            PreparedStatement preparedStatementTrainer=con.prepareStatement(addtrainer);
            PreparedStatement preparedStatementMember=con.prepareStatement(addmember);) {

         if(user!=null){
             ps.setString(1, user.getUserName());
             ps.setString(2, user.getEmail());
             ps.setInt(3,user.getMobile());
             ps.setString(4, PasswordUtils.encryptPassword(user.getPassword()));
             ps.setString(5, user.getRole());
             ps.executeUpdate();
             ResultSet rs = ps.getGeneratedKeys();
             if (rs.next()) {
                 int id=rs.getInt(1);
                 if (user.getRole().equals("trainer")) {
                     Trainer trainer= (Trainer) user;
                     preparedStatementTrainer.setString(1, trainer.getSpesialisation());
                     preparedStatementTrainer.setInt(2, id);
                     preparedStatementTrainer.executeUpdate();

                 } else if (user.getRole().equals("admin")) {
                     System.out.println("this is admin");

                 } else {
                     System.out.println(user.getRole());
                     preparedStatementMember.setInt(1, id);
                     preparedStatementMember.executeUpdate();
                 }
                 return id;
             }
         }


     } catch (Exception e) {
         throw new RuntimeException(e);
     }
     return 0;
    }

    @Override
    public User getUserByEmail(String email) {
        User user = new Member();
        String foundById="select  * from user where email=?";
        try(PreparedStatement ps=con.prepareStatement(foundById)){
           ps.setString(1, email);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                user.setPassword(rs.getString("password"));
                user.setEmail(email);
                user.setRole(rs.getString("role"));
                user.setUserId(rs.getInt("userId"));
                return  user ;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public List<User> getAllUsers() {
        String SELECT_ALL_USER="insert * into user";
        List<User> users=new ArrayList<>();
        try(PreparedStatement ps=con.prepareStatement(SELECT_ALL_USER)){

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return users;    }

    @Override
    public List<User> getAllUsersByRole(String role) {
        List<User> users=new ArrayList<>();
        String SELECT_ALL_USER="select * from user where role=?";
        try (Connection connection=DBConnection.getConnection();
             PreparedStatement preparedStatement= connection.prepareStatement(SELECT_ALL_USER)) {
              preparedStatement.setString(1, role);
              ResultSet rs=preparedStatement.executeQuery();
              while (rs.next()){
                  int userId = rs.getInt(1);
                  String userName = rs.getString("userName");
                  String roleName = rs.getString("role");
                  System.out.println(userId);

                      users.add(new User(userId, userName,role) {
                      });



              }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        for (User user : users) {
            System.out.println(user.getUserId());
        }
        return users;
    }


    @Override
    public boolean updateUser(User user) {
        String UPDATE_USER="update user set username=?,email=?,phone=?,password=? where id=?";
        try(PreparedStatement ps=con.prepareStatement(UPDATE_USER)){

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    @Override
    public boolean deleteUser(int id) {
        String DELETE_USER="delete from user  where id=?";
        try(PreparedStatement ps=con.prepareStatement(DELETE_USER)){

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
 return false;
    }
}
