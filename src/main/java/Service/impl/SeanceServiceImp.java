package Service.impl;


import Dao.impl.SeanceDaoImp;
import Model.Seance;
import Service.SeanceService;
import java.time.LocalDateTime;
import java.util.List;

public class SeanceServiceImp implements SeanceService {
    private final SeanceDaoImp seanceDaoImp=new SeanceDaoImp();

    @Override
    public boolean addclass() {
        return seanceDaoImp.addclass();
    }

    @Override
    public boolean deleteclass(int id) {
        return seanceDaoImp.deleteclass(id);
    }

    @Override
    public boolean updateclass(int id, String name, String desc, LocalDateTime starttime) {
        return seanceDaoImp.updateclass(id, name, desc, starttime);
    }

    @Override
    public List<Seance> displayALlClass() {
        return seanceDaoImp.displayALlClass();
    }

    @Override
    public List<Seance> displayALlClassForTrainer(int trainerId) {
        return seanceDaoImp.displayALlClassForTrainer(trainerId);
    }

    @Override
    public List<Seance> displayClassJoinedMember(int memberId) {
        return seanceDaoImp.displayClassJoinedMember(memberId);
    }
}
