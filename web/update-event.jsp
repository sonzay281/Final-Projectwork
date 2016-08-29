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
            u.setName(request.getParameter("title"));
            SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
            u.setDate(format.parse(request.getParameter("date")));
            u.setVenue(request.getParameter("venue"));
            u.setPhone(request.getParameter("phone"));
            u.setOrg_name(request.getParameter("org_name"));
            u.setDescription(request.getParameter("description"));
            userDAO.updateEvent(u);
            response.sendRedirect("dashboard.jsp?updated");
            out.println(u);
        } catch (Exception e) {
            out.println(e.getMessage());
        }

    }


%>