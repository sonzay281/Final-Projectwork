
<%@include file="entity/header.jsp" %>
 
<title>User Login  ||  Event Management</title> 
</head>
<body>
    <div class="container">
        <div class="row"> <div class="fullscreen-bg"></div>
            <div class="col-md-4 col-md-offset-3">
                <div class="main box">
                    <center> 
                        <h3>User Login</h3>
                    </center>
                    <form method="post" action="index.jsp">
                        <div class="form-group">
                            <label>User Name</label>
                            <input class="form-control" type="text" name="username"  required="required"  placeholder="Enter the User Name">   
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input class="form-control" type="password" name="password"  required="required"   placeholder="Enter the Password">   
                        </div>

                        <div class="col" >
                            <input type="checkbox" class="arrow"> Remember me?
                            <input type="hidden" name="id"/>
                            <button type="submit" class="btn btn-success pull-right">
                                <span class="glyphicon glyphicon-log-in"></span> Login</button>             
                        </div> 
                    </form>
                    <div>                      
                        <a href="reset.jsp" target="_blank" ><button class="btn btn-danger">
                                <span class="glyphicon glyphicon-retweet"></span> Forget Password?</button>
                        </a>

                        <a href="signup.jsp" target="_blank"/><button class="btn btn-info">
                            <span class="glyphicon glyphicon-plus"></span>Sign Up</button>
                        </a>
                    </div>

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