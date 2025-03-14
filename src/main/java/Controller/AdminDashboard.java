package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(urlPatterns = {
        "/Admin/*"
})
public class AdminDashboard extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        System.out.println(path);
        if (path==null || path.equals("")) {
            path = "/";
        }

        switch (path) {
            case "/Dashboard":
                dispatch(req, resp,"/View/Admin/Dashboard.jsp");
                break;
            case "/trainer":
                dispatch(req, resp,"/View/Admin/Trainer.jsp");
                break;
                case "/member":
                    dispatch(req, resp,"/View/Admin/Member.jsp");
                    break;
                    case "/classes":
                        dispatch(req, resp,"/View/Admin/Classes.jsp");
                        break;
                        default:
                            dispatch(req, resp,"/View/Error.jsp");
                            break;


        }

    }
    public void dispatch(HttpServletRequest req, HttpServletResponse resp,String path) throws ServletException, IOException {
        RequestDispatcher dispatcher=req.getRequestDispatcher(path);
        dispatcher.forward(req,resp);
    }
}
