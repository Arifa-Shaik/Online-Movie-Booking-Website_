import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class Login extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        if (user.equals("user") && pass.equals("user123")) {
            RequestDispatcher rd = request.getRequestDispatcher("hello.jsp");
            rd.forward(request, response);
        } else {
            out.println("Invalid username or password login agian");

        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}