package Controller.Trainer;

import Model.Seance;
import Service.impl.SeanceServiceImp;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDateTime;


@WebServlet({
        "/DashboardTrainer/*",

})
public class TrainerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        Object id = session.getAttribute("user");
        int userId = Integer.parseInt(id.toString());
        System.out.println(userId+"id is");
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        LocalDateTime Date = LocalDateTime.parse(req.getParameter("date"));

        String path = req.getPathInfo();
        SeanceServiceImp seanceServiceImp = new SeanceServiceImp();



        switch (path){
            case "/addClass":
                Seance seance=new Seance(title,description,Date,userId);
                if ( seanceServiceImp.addclass(seance)){
                    req.getRequestDispatcher("/View/Trainer/DashboardTrainer.jsp").forward(req, resp);
                }

                break;
                case "/deleteClass":
                    break;
                    case "/updateClass":
                        break;
                    default:
                        break;

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        if (path==null || path.equals("/")) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/View/Trainer/DashboardTrainer.jsp");
            requestDispatcher.forward(req, resp);
        }
        else {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/View/Error.jsp");
            requestDispatcher.forward(req, resp);
        }

    }
}
