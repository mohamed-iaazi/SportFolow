package Security;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;



@WebFilter({ "/Classes"})
public class LoginAuth implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        // Get existing session without creating a new one
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("user") != null) {
            filterChain.doFilter(servletRequest, servletResponse);
            // Allow access
        } else {
            response.sendRedirect(request.getContextPath()+"/Login"); // Redirect to login if unauthorized
        }
    }
}