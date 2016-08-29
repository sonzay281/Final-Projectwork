 
<%@page import="java.sql.SQLException"%>
<%@page import="com.leapfrog.eventmanager.entity.User"%>
<%@page import="com.leapfrog.eventmanager.dao.impl.UserDAOImpl"%>
<%@page import="com.leapfrog.eventmanager.dao.UserDAO"%>
<%
    try {
        if (!request.getMethod().equalsIgnoreCase("post")) {
            response.sendRedirect("login.jsp?login First");
        } else {
            UserDAO userDAO = new UserDAOImpl();
            for (User u : userDAO.getAllContact()) {
                if ((request.getParameter("username")).equals(u.getUsername()) && (request.getParameter("paassword").equals(u.getPassword()))) {
                    response.sendRedirect("dashboard.jsp");
                } else {
                    response.sendRedirect("login.jsp?wrong data");
                }
            }
        }
    } catch (Exception e) {
        out.println(e.getMessage());
    }

%>