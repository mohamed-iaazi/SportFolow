package Controller;

import Dao.impl.UserDaoImp;
import Model.Member;
import Model.User;
import Service.impl.UserServiceImp;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet({"/Register" ,"/Register.jsp"})
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String mobile=req.getParameter("number");
        String password = req.getParameter("password");

        Member member = new Member();
        UserServiceImp userServiceImp = new UserServiceImp();
        User user= new Member(username,email,Integer.parseInt(mobile),password,member.getRole());
        if (userServiceImp.addUser(user)!=0){
            HttpSession session = req.getSession();
            session.setAttribute("user",userServiceImp.addUser(user));
            session.setAttribute("role",member.getRole());
            System.out.println("class");
            resp.sendRedirect(req.getContextPath()+"/Classes");
        }
        else {
           req.setAttribute("errour" , "Erreur");
           resp.sendRedirect(req.getContextPath()+"/Register");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/View/Register.jsp");
        dispatcher.forward(req, resp);
    }
}
