<%@page import="com.leapfrog.eventmanager.entity.User"%>
<%@page import="com.leapfrog.eventmanager.dao.impl.UserDAOImpl"%>
<%@page import="com.leapfrog.eventmanager.dao.UserDAO"%>
<%
    if (!request.getMethod().equalsIgnoreCase("post")) {
        out.println("<h1>Oh hero,Your father is here.Go to hell.</h1>");
    } else {
        try {
            UserDAO userDAO = new UserDAOImpl();
            User u = new User();
             u.setEmail(request.getParameter("email"));
             u.setUsername(request.getParameter("username"));
             u.setPassword(request.getParameter("password"));
            userDAO.insertUser(u);
            response.sendRedirect("login.jsp?saved");
            out.println(u);
        } catch (Exception e) {
            out.println(e.getMessage());
        }

    }


%>