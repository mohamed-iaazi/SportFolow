package Dao.impl;

import Dao.SeanceDao;
import Model.Seance;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class SeanceDaoImp implements SeanceDao {
    @Override
    public boolean addclass() {
        return false;
    }

    @Override
    public boolean deleteclass(int id) {
        return false;
    }

    @Override
    public boolean updateclass(int id, String name, String desc, LocalDateTime starttime) {
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
