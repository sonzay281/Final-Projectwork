<%@include file="entity/header.jsp" %>
<title>Change Password Event</title>
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
    <div class="col col-lg-6 col-lg-offset-2 form-group">

        <h2><label>Change Password</label></h2>
        <form method="post" action="updatepass.jsp">
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Current Password">
            </div>
            <div class="form-group">
                <input type="password" name="newpassword" class="form-control" placeholder="New Password">
            </div>
            <!-- <div class="form-group">
                 <input type="password" name="newpassword" placeholder="Confirm Password">
             </div>-->
            <div class="pull-right">
                <button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-floppy-save"></span>Change</button>
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
