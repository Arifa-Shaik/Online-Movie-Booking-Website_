import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.jdbc.Driver;

public class checkuser extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String n = request.getParameter("name");
        String p = request.getParameter("password");
        Driver driver = null;

        try {

            driver = new Driver();

            DriverManager.registerDriver(driver);
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql:///db", "arifa", "arifa");

            PreparedStatement ps = con.prepareStatement("select password from userList where name = ?");
            ps.setString(1, n);

            ResultSet result = ps.executeQuery();

            out.println("<html>");
            out.println("<body>");

            if (result.next()) {
                String pass = result.getString(1);
                if (pass.equals(p)) {
                    out.println("welcome user  " + n);
                    out.println("<a href='List1?name=" + n + "'>Movie_List</a>");
                } else {
                    out.println("INVALID PASSWORD");
                }
            } else {
                out.println("INVALID USERNAME");
            }
            out.println("</body>");
            out.println("</html>");

        } catch (Exception d) {
            d.printStackTrace();
        }
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(req, resp);
    }
}