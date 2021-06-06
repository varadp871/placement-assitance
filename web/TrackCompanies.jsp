<%-- 
    Document   : TrackCompanies
    Created on : May 31, 2021, 3:09:06 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page
    import="java.io.IOException;"
    import ="java.io.PrintWriter;"
    import ="javax.servlet.ServletException;"
    import ="javax.servlet.annotation.WebServlet;"
    import ="javax.servlet.http.HttpServlet;"
    import ="javax.servlet.http.HttpServletRequest;"
    import ="javax.servlet.http.HttpServletResponse;"
    import ="java.sql.*;"
    import ="javax.servlet.http.HttpSession;"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Track Companies</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        </head>
        <body>
            <%

                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1

                response.setHeader("Pragma", "no-cache");//HTTP 1.0

                response.setHeader("Expires", "0"); //Proxies

                if (session.getAttribute("GRNo") == null) {
                    response.sendRedirect("stu.jsp");
                }

                if (session.getAttribute("registered") == null) {
                    response.sendRedirect("announcements0.jsp");

                }

            %>

            <h1>Hello ${GRNo}!</h1>


            <h2>Apply for a Company :</h2>

            <%            Connection conn;
                Statement stmt;
                ResultSet rs;
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/";
                String dbname = "placement-assistance";
                String userName = "root";
                String Password = "";

            %>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Company Name</th>
                        <th scope="col">Offered_ctc</th>
                        <th scope="col">Required CGPA</th>
                        <th scope="col">Description</th>
                        <th scope="col">Branches</th>
                        <th scope="col">Application Status</th>

                    </tr>
                </thead>
                <tbody>
                    <%            try {
                            Class.forName(driver).newInstance();
                            conn = DriverManager.getConnection(url + dbname, userName, Password);
                            String Query = "Select * from active_companies";
                            stmt = conn.createStatement();
                            rs = stmt.executeQuery(Query);
                            while (rs.next()) {
                                
                                
                                String company_name = rs.getString("company_name");
               

                    %>
                    <tr>
                        <th scope="row"><%=rs.getString("company_name")%></th>
                        <td><%=rs.getString("offered_ctc")%></td>
                        <td><%=rs.getString("required_cgpa")%></td>
                        <td><%=rs.getString("description")%></td>
                        <td><%=rs.getString("branches")%></td>

                        <td><a href="ApplyCompany.jsp?company=<%=rs.getString("company_name")%>">
                                <button class="btn btn-outline-info" style="width: 150px; line-height: 1.0;" name="applyButton">Apply</button>

                            </a>
                        </td>

                    </tr>
                    <%
                            }

                        } catch (Exception ex) {
                            out.println("Exception : " + ex.getMessage());
                            ex.printStackTrace();

                        }
                    %>

                </tbody>
            </table>

            <form action="LogoutStu">
                <button type="submit" class="btn btn-danger">Logout</button>
            </form>
        </body>

    </html>
