<!--
###############################################
#  The Following Lines are very sensitive :D  #
#  Never Try To change without my Permission  #
#      Developed By: Sanjaya Sapkota          #
#  Leapfrog Academy,Charkhal Road,DilliBazar  #
###############################################
-->
<%@include file="entity/header.jsp" %>
<!--Here you can change TItle of the page-->

<title>Events || Dashboard  ||</title>

<!--   Danger ! Danger !! Danger !!! -->
<%@include file="entity/sidetop.jsp"%>
<div class="row">        
    <!-- 
    #   Do not Edit The above lines   #
    ###################################
    #  Do not Change the above lines  #
    -->
    <!--
    ###################################################################
    #                                                                 #
    #  Main Content Box start,you can edit add  whatever you want :D  #
    #                                                                 #
    ###################################################################
    -->  <%
            UserDAO userDAO = new UserDAOImpl();
            for (User u : userDAO.getAllEvent()) {
        %>


    <div class="col col-md-12">
       
        <div class="row"> 
            <div class="col-md-6 thumbnail">
                <img src="assets/images/event.jpg" alt="Events Dashboard">
                <div class="caption">
                    <hr class="divider">
                    <center>
                        Organizer's Name:<b><%=u.getOrg_name()%></b>   
                    </center></div>
            </div>
            <div class="col-md-6">
                <table class="table table-striped">
                    <tr><th>Title:</th><td><%=u.getTitle()%></td></tr>
                    <tr><th>Date:</th> <td><%=u.getDate()%></td></tr>
                    <tr><th>Venue:</th> <td><%=u.getVenue()%></td></tr>
                    <tr><th>Phone:</th> <td><%=u.getPhone()%></td></tr>
                    <tr><th>Description:</th><td><%=u.getDescription()%></td></tr>
                </table>
                <div class=" pull-right">
                    <a href="delete-event.jsp">
                        <button class="btn btn-danger "><span class="glyphicon glyphicon-remove-sign"></span>Delete</button></a>
                    <a href="edit-event.jsp?title=<%=u.getTitle()%>">
                        <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span>Edit</button></a>
                </div>
            </div>
        </div>
        <hr class="divider">
        <% }%>
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