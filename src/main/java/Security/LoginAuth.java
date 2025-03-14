package Security;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;



@WebFilter(urlPatterns = {
        "/Classes",
        "/Classes.jsp",
        "/Trainer",
        "/Trainer.jsp",
        "/Dashboard",
        "/Dashboard.jsp"

})
public class LoginAuth implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpSession session = request.getSession(false);
        if (session == null) {

            response.sendRedirect(request.getContextPath()+"/");
        }
      else if (session!=null){
          filterChain.doFilter(servletRequest, servletResponse);

      }
    }
}
