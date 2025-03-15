package Service;

import Model.Seance;

import java.time.LocalDateTime;
import java.util.List;

public interface SeanceService {
    public boolean addclass(Seance seance);
    public boolean deleteclass(Seance seance);
    public boolean updateclass(Seance seance);
    public List<Seance> displayALlClass();
    public List<Seance> displayALlClassForTrainer(int trainerId);
    public List<Seance> displayClassJoinedMember(int memberId);
}
