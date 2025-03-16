package Controller.Admin;

import Model.Trainer;
import Model.User;
import Service.impl.UserServiceImp;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = {
        "/Admin/*"
})
public class AdminDashboard extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String spesialisation=req.getParameter("spesialisation");
        String password = req.getParameter("password");
        String path = req.getPathInfo();
        switch (path){
            case "/addTrainer":
                Trainer trainer=new Trainer(username,email,000,password,"trainer",spesialisation);
                UserServiceImp userServiceImp=new UserServiceImp();
                if (userServiceImp.addUser(trainer)!=0){
                     resp.sendRedirect(req.getContextPath()+"/Admin/Dashboard");
                }
                else {
                    resp.sendRedirect(req.getContextPath()+"/Admin/trainer");
                }
                break;
                        default:
                            dispatch(req, resp,"/View/Error.jsp","null");
                            break;

        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        System.out.println(path);
        if (path==null || path.equals("")) {
            path = "/";
        }

        switch (path) {
            case "/Dashboard":
                dispatch(req, resp,"/View/Admin/Dashboard.jsp","null");
                break;
            case "/trainer":
                dispatch(req, resp,"/View/Admin/Trainer.jsp","trainer");

                break;
                case "/member":
                    dispatch(req, resp,"/View/Admin/Member.jsp","member");
                    break;
            case "/AddAdmin":
                dispatch(req, resp,"/View/Admin/AddAdmin.jsp","admin");

                break;
                    case "/classes":
                        dispatch(req, resp,"/View/Admin/Classes.jsp","classes");
                        break;
                        default:
                            dispatch(req, resp,"/View/Error.jsp","null");
                            break;


        }

    }
    public void dispatch(HttpServletRequest req, HttpServletResponse resp,String path,String role) throws ServletException, IOException {
        UserServiceImp userServiceImp=new UserServiceImp();

        List<User> UserList= userServiceImp.getAllUsersByRole(role);
        req.setAttribute("UserList",UserList);

        List<User> trainers= userServiceImp.getAllUsersByRole("trainer");
        req.setAttribute("trainers",trainers);

        List<User> member= userServiceImp.getAllUsersByRole("member");
        req.setAttribute("member",member);

        RequestDispatcher dispatcher=req.getRequestDispatcher(path);
        dispatcher.forward(req,resp);
    }
}
