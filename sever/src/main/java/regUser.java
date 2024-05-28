import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.cj.jdbc.Driver;

public class regUser extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

            PreparedStatement ps = con.prepareStatement("insert into userList values(?, ?)");

            ps.setString(1, n);
            ps.setString(2, p);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.print("Registered successfully..");
            }

        } catch (Exception d) {
            d.printStackTrace();
        }
        out.close();
    }
}