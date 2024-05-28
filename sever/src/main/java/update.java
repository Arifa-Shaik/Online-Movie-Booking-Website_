import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.cj.jdbc.Driver;

public class update extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String n = request.getParameter("old_name");
        String p = request.getParameter("new_name");
        String e = request.getParameter("new_theatre");

        Driver driver = null;

        try {

            driver = new Driver();

            DriverManager.registerDriver(driver);
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql:///db", "arifa", "arifa");

            PreparedStatement ps = con
                    .prepareStatement("update REGISTERMOVIE SET name = ? , theatre_name = ?  where name = ?");

            ps.setString(1, p);
            ps.setString(2, e);
            ps.setString(3, n);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.print("updated successfully..");
            } else {
                out.print("Not updated successfully..");
            }

        } catch (Exception d) {
            d.printStackTrace();
        }
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}