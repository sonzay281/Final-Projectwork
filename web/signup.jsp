<%@include file="entity/header.jsp" %>
<title>User Login  ||  Event Management</title> 
</head>
<body>
    <div class="container">
        <div class="row"> <div class="fullscreen-bg"></div>
            <div class="col-md-4 col-md-offset-3">
                <div class="main box">
                    <center> 
                        <h3>Register New User</h3>
                    </center>
                    <form method="post" action="register.jsp">

                        <div class="form-group">
                            <label>Email</label>
                            <input class="form-control" type="email" name="email"  required="required"   placeholder="Enter the Email">   
                        </div>
                        <div class="form-group">
                            <label>User Name</label>
                            <input class="form-control" type="text" name="username"  required="required"  placeholder="Enter the Username"><font color="red">* Keep your username safe.</font>   
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input class="form-control" type="password" name="password"  required="required"   placeholder="Enter the Password">   
                        </div>
                        <div class="col" >


                            <button type="submit" class="btn btn-success pull-right">
                                <span class="glyphicon glyphicon-log-in"></span> Sign Up!</button>             
                        </div> 
                    </form>
                </div> 
                <br>

                <div class="footer">
                    <hr class="divider">
                    <center>
                        <h5>Copyright  2016 Sanjaya Sapkota</h5>
                        <h5>All rights reserved.</h5>
                    </center>
                </div>
            </div>
        </div>
    </div>
</body>
</html>