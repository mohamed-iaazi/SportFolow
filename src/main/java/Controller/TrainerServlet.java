package Controller;

import Model.Seance;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@WebServlet({
        "/DashboardTrainer/*",

})
public class TrainerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int trainerId = 1;
        System.out.println("Trainr id  :"+trainerId);
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        LocalDateTime Date = LocalDateTime.parse(req.getParameter("date"));

        String path = req.getPathInfo();

        switch (path){
            case "/addClass":
                Seance seance=new Seance(title,description,Date,trainerId);


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
