package Security;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebFilter("/Admin/*")
public class AdminAuth implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        String pathInfo = request.getPathInfo();
        if (pathInfo == null) {
            pathInfo = "/" + pathInfo;
        }

         if (session != null && session.getAttribute("role") != null && session.getAttribute("role").equals("admin")) {
             filterChain.doFilter(servletRequest, servletResponse);

         } else if (pathInfo.equals("/AddAdmin") || pathInfo.equals("/InsertAdmin")) {
             filterChain.doFilter(servletRequest, servletResponse);

         } else {
             RequestDispatcher requestDispatcher = request.getRequestDispatcher("/View/NoAccess.jsp");
             requestDispatcher.forward(servletRequest, servletResponse);

         }
    }
}
