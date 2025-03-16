package Security;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter({"/Login","/Register"})
public class SessionAuth implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        HttpSession session = httpServletRequest.getSession();
        if (session != null &&session.getAttribute("user") == null) {
            filterChain.doFilter(servletRequest, servletResponse);

        }
        else if (session!=null && session.getAttribute("user") != null && !session.getAttribute("role").equals("admin")) {
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/Admin/Dashboard");

        }
        else if (session!=null && session.getAttribute("user") != null && !session.getAttribute("role").equals("trainer")) {
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/DashboardTrainer");

        } else {
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/Classes");
        }

    }
}
