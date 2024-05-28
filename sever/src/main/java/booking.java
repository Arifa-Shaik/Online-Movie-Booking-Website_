import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.jdbc.Driver;

public class booking extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Driver driver = null;

        String n = request.getParameter("name");
        String s = request.getParameter("show");
        String t = request.getParameter("theatre");
        String tt = request.getParameter("tickets");
        String pay = request.getParameter("payment");

        try {

            driver = new Driver();

            DriverManager.registerDriver(driver);
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql:///db", "arifa", "arifa");

            PreparedStatement ps = con.prepareStatement(
                    "select * from REGISTERMOVIE where name = ? and show_time = ? and theatre_name = ?");

            ps.setString(1, n);
            ps.setString(2, s);
            ps.setString(3, t);
            ResultSet result = ps.executeQuery();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Booking Details</title>");
            out.println("<style>");
            out.println("body {");
            out.println("    font-family: Arial, sans-serif;");
            out.println("    background-image: url('https://source.unsplash.com/random/1920x1080');");
            out.println("    background-size: cover;");
            out.println("    background-position: center;");
            out.println("    display: flex;");
            out.println("    justify-content: center;");
            out.println("    align-items: center;");
            out.println("    height: 100vh;");
            out.println("}");
            out.println("table {");
            out.println("    background-color: rgba(255, 255, 255, 0.8);");
            out.println("    border-collapse: collapse;");
            out.println("    width: 80%;");
            out.println("}");
            out.println("th, td {");
            out.println("    padding: 8px;");
            out.println("    text-align: left;");
            out.println("    border-bottom: 1px solid #ddd;");
            out.println("}");
            out.println("th {");
            out.println("    background-color: #f2f2f2;");
            out.println("}");
            out.println("h1 {");
            out.println("    color: darkred;");
            out.println("}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");

            out.println("<h1>User Records</h1>");

            out.println("<table>");
            out.println(
                    "<tr><th>Movie_Name</th><th>Theatre</th><th>Adress</th><th>show_time</th><th>Total_cost</th><th>paid through</th></tr>");

            if (result.next()) {
                String name = result.getString(1);
                String theatre = result.getString(2);
                String adress = result.getString(3);
                String show = result.getString(4);
                int available = result.getInt(5);

                if (Integer.parseInt(tt) > available) {
                    out.println("No tickets availbale for this show choose another....");
                } else {// Add an "Edit" link for each record
                    int cost = Integer.parseInt(tt) * 100;
                    String s2 = "update registermovie set available = ? where name = ? and show_time = ?";
                    PreparedStatement ps1 = con.prepareStatement(s2);
                    ps1.setInt(1, available - Integer.parseInt(tt));
                    ps1.setString(2, n);
                    ps1.setString(3, s);
                    ps1.executeUpdate();
                    out.println("<tr>");
                    out.println("<td>" + name + "</td>");
                    out.println("<td>" + theatre + "</td>");
                    out.println("<td>" + adress + "</td>");
                    out.println("<td>" + show + "</td>");
                    out.println("<td>" + cost + "</td>");
                    out.println("<td>" + pay + "</td>");
                    out.println("</tr>");
                }
            }
            out.println("</table>");

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
