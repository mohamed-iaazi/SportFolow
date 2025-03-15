package Service;

import Model.Seance;

import java.time.LocalDateTime;
import java.util.List;

public interface SeanceService {
    public boolean addclass();
    public boolean deleteclass(int id);
    public boolean updateclass(int id, String name, String desc, LocalDateTime starttime);
    public List<Seance> displayALlClass();
    public List<Seance> displayALlClassForTrainer(int trainerId);
    public List<Seance> displayClassJoinedMember(int memberId);
}
