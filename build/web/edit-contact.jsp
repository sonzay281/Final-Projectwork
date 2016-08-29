<%@include file="entity/header.jsp" %>
<title>Edit Event</title>
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
    if (request.getParameter("name") == null || request.getParameter("name").isEmpty()) {
        response.sendRedirect("dashboard.jsp?error");
    } else {
        String name =request.getParameter("name");
        u = userDAO.getByName(name);
        if (u == null) {
            u = new User();
            response.sendRedirect("index.jsp?error");
        }
    }
%>
            <div class="form-group"><h3><label>Edit Contact</label></h3>
                <form method="post" action="update-contact.jsp">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text"  class="form-control" required="required" name="name" value="<%=u.getName()%>"/>   
                    </div>
                   <div class="form-group">
                        <label>Phone</label>
                        <input type="text"   class="form-control" required="required" name="phone"  value="<%=u.getPhone()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email"   class="form-control" required="required" name="email" value="<%=u.getEmail()%>"/>  
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <input type="text" class="form-control" required="required" name="address" value="<%=u.getAddress()%>"/>
                    </div>
                     <div class="form-group">
                        <label>Relation</label>
                        <input type="text"  class="form-control" required="required" name="relation" value="<%=u.getRelation()%>"/>
                    </div>
                    
                    
                    <div class="pull-right">
                        <button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-floppy-save"></span>Update</button>
                        <a class="btn btn-warning " href="dashboard.jsp?canceled"><span class="glyphicon glyphicon-remove"></span>Cancel</a> 
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
       