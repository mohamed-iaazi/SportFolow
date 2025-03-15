package Service.impl;


import Dao.impl.SeanceDaoImp;
import Model.Seance;
import Service.SeanceService;
import java.time.LocalDateTime;
import java.util.List;

public class SeanceServiceImp implements SeanceService {
    private final SeanceDaoImp seanceDaoImp=new SeanceDaoImp();

    @Override
    public boolean addclass(Seance seance) {
        return seanceDaoImp.addclass(seance);
    }

    @Override
    public boolean deleteclass(Seance seance) {
        return seanceDaoImp.deleteclass(seance);
    }

    @Override
    public boolean updateclass(Seance seance) {
        return seanceDaoImp.updateclass(seance);
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
