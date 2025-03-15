package Dao.impl;

import Dao.SeanceDao;
import Model.Seance;
import Util.DBConnection;
import jakarta.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class SeanceDaoImp implements SeanceDao {


    @Override
    public boolean addclass(Seance seance) {
        String INSERT_SEANCE = "insert into seance (title , description , date ,idTrainer) values (?,?,?,?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SEANCE)) {
            preparedStatement.setString(1, seance.getTitle());
            preparedStatement.setString(2, seance.getDescription());
            preparedStatement.setString(3, seance.getDateTime().toString());
            preparedStatement.setInt(4, seance.getIdTrainer());
            preparedStatement.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }
    @Override
    public boolean deleteclass(Seance seance) {
        return false;
    }

    @Override
    public boolean updateclass(Seance seance) {
        return false;
    }


    @Override
    public List<Seance> displayALlClass() {
        List<Seance> seances = new ArrayList<Seance>();
        return seances;
    }

    @Override
    public List<Seance> displayALlClassForTrainer(int trainerId) {
        List<Seance> seances = new ArrayList<Seance>();
        return seances;    }

    @Override
    public List<Seance> displayClassJoinedMember(int memberId) {
        List<Seance> seances = new ArrayList<Seance>();
        return seances;
    }
}
