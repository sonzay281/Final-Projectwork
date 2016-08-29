<%@include file="entity/header.jsp" %>
<title>User Dashboard || Edit Event</title>
<%@include file="entity/sidetop.jsp" %>
        <div class="row">
                <!-- 
    #   Do not Edit The above lines   #
    ###################################
    #  Do not Change the above lines  #
    -->
    <!--
    ###################################################################
    #                                                                 #
    # Main Content Box start,you can edit delete whatever you want :D #
    #                                                                 #
    ###################################################################
    --> 
    
     <%
    User u = new User();
    UserDAO userDAO = new UserDAOImpl();
    if (request.getParameter("title") == null || request.getParameter("title").isEmpty()) {
        response.sendRedirect("dashboard.jsp?error");
    } else {
        String title =request.getParameter("title");
        u = userDAO.getByTitle(title);
        if (u == null) {
            u = new User();
            response.sendRedirect("index.jsp?error");
        }
    }
%>
            <div class="form-group"><h3><label>Edit Event</label></h3>
                <form method="post" action="update-event.jsp">
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text"  class="form-control" required="required" name="title" value="<%=u.getTitle()%>" />   
                    </div>
                    <div class="form-group">
                        <label>Date</label>
                        <input type="date"  class="form-control" required="required" name="date" value="<%=u.getDate()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Venue</label>
                        <input type="text"   class="form-control" required="required" name="venue" value="<%=u.getVenue()%>" />
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text"   class="form-control" required="required" name="phone" value="<%=u.getPhone()%>"/>  
                    </div>
                    <div class="form-group">
                        <label>Organizer's Name</label>
                        <input type="text" class="form-control" required="required" name="org_name" value="<%=u.getOrg_name()%>"/>
                    </div>
                     <div class="form-group">
                        <label>Description</label>
                        <input type="text"   class="form-control" required="required" name="text" rows="5" value="<%=u.getDescription()%>">
                    </div>
                     <div class="form-group">
                        
                         <label> Browse Image:</label><input type="file" name="img"/>
                    </div>
                    <div class="pull-right">
                        <button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-floppy-save"></span>Update</button>
                        <a class="btn btn-warning " href="dashboard.jsp?cancel"><span class="glyphicon glyphicon-remove"></span>Cancel</a> 
                    </div>    
                </form>
                </div> 
     <!--
    ###################################################################
    #                                                                 #
    #  Main Content Box ends,now you can modify the following lines   #
    #                                                                 #
    ###################################################################
    -->      
 <!-- 
    #   Do not Edit The following lines   #
    #######################################
    #  Do not Change the following lines  #
 -->
            </div>
<%@include file="entity/footer.jsp" %>
       