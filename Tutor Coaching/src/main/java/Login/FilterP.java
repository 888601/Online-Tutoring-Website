package Login;

import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter({"/JSP/student.jsp", "/JSP/devopsstudent.jsp", "/JSP/javaeestudent.jsp", "/JSP/cloudstudent.jsp", "/JSP/Teacher.jsp", "/HTML/calendar.html", "/main","/Fetch"}) // Apply this filter to all URL patterns
public class FilterP implements Filter {

    public void init(FilterConfig fConfig) throws ServletException {
        // Initialization code, if needed
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession(false);

        boolean isLoggedIn = (session != null && session.getAttribute("username") != null);

        String loginURI = httpRequest.getContextPath() + "/JSP/beforelogin.jsp";

        // Allow access to login page without session check
        boolean isLoginRequest = httpRequest.getRequestURI().equals(loginURI);

        if (isLoggedIn || isLoginRequest) {
            // If user is logged in or accessing the login page, proceed to the requested resource
            chain.doFilter(request, response);
        } else {
            // Redirect to login page if user is not logged in and requesting a protected resource
            httpResponse.sendRedirect(loginURI);
        }
    }

    public void destroy() {
        // Cleanup code, if needed
    }
}
