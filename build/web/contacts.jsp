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

<title>Contacts || Dashboard  ||</title>

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
    --> 
    <div class="col col-md-12">
       
            <h2> Contact</h2>
            <table class="table table-striped table-responsive table-hover ">
                <tr class="bg-info">                   
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Relation</th> 
                    <th>Action</th>
                </tr>
                <%
                    UserDAO userDAO = new UserDAOImpl();
                    for (User u : userDAO.getAllContact()) {
                %>

                <tr>
                    <td><%=u.getName()%></td> 
                    <td><%=u.getPhone()%></td>
                    <td><%=u.getEmail()%></td> 
                    <td><%=u.getAddress()%></td>                   
                    <td><%=u.getRelation()%></td>
                    <td><a   href="edit-contact.jsp?name=<%=u.getName()%>" target="_blank" class="btn btn-success">
                            <span class="glyphicon glyphicon-pencil">Edit</span>
                        </a>
                        <a  href="delete.jsp?id=" target="_blank" class="btn btn-danger">
                            <span class="glyphicon glyphicon-trash">Delete</span>
                        </a>
                    </td>
                </tr>
                <% }%>
            </table>
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