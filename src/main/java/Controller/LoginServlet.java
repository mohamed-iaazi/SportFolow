package Controller;

import Model.User;
import Service.UserService;
import Service.impl.UserServiceImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   String email = req.getParameter("email");
   String password = req.getParameter("password");

        UserServiceImp userServiceImp = new UserServiceImp();
        User user = userServiceImp.getUserByEmail(email);
        if (user!=null && Util.PasswordUtils.verifyPassword(password,user.getPassword())){
              HttpSession session = req.getSession();
              session.setAttribute("user", user.getEmail());
              resp.sendRedirect(req.getContextPath()+"/Classes");
        }
        else {
            resp.sendRedirect(req.getContextPath()+"/");
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
