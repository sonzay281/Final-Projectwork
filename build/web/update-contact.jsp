<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.leapfrog.eventmanager.dao.impl.UserDAOImpl"%>
<%@page import="com.leapfrog.eventmanager.entity.User"%>
<%@page import="com.leapfrog.eventmanager.dao.UserDAO"%>
<%
    if (!request.getMethod().equalsIgnoreCase("post")) {
        out.println("<h1>Oh hero,Your father is here.Go to hell.</h1>");
    } else {
        try {
            UserDAO userDAO = new UserDAOImpl();
            User u = new User();
            u.setName(request.getParameter("name"));
            u.setPhone(request.getParameter("phone"));
            u.setEmail(request.getParameter("email"));
            u.setAddress(request.getParameter("address"));
            u.setRelation(request.getParameter("relation"));
            userDAO.updateContact(u);
            response.sendRedirect("dashboard.jsp?updated");
            out.println(u);
        } catch (Exception e) {
            out.println(e.getMessage());
        }

    }


%>