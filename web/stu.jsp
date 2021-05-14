<%-- 
    Document   : stu
    Created on : 18 Nov, 2014, 9:44:48 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

         
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
          <link rel="stylesheet" type="text/css" href="./css/stylemenu.css">
    </head>
    <body>
        
		<div class='heading'>
		<img src= "./assets/logo2.png" id = 'logo' style="cursor: pointer;">
		<h1>Student Login | Vishwakarma Institute of Technology</h1>
                </div>
	<div class="navbar">
	
	<ul>
	 <li><a href="placements.jsp"> Placements </a></li> 
	 <li><a href="campus.jsp"> Campus </a></li> 
	 <li><a href="contactUs.html"> Contact Us </a></li> 
  </ul>

</div>
     <br>
        <div class="container">
                    <form  method="POST" action="StudentSignin">
                        <div id="login">

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="inputGroup-sizing-default">Username</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id = "user" name = "username">
                            </div>
                            <br>
                            <br>


                            <div class="input-group mb-3">
                                <span class="input-group-text" id="inputGroup-sizing-default">Password</span>
                                <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="pass" name = "password">
                            </div>


                            <br>

                        </div>
                        <br>
                        <br>
                        <div>


                            <button class="btn btn-primary" id="loginbtn">Login</button>

                        </div>
                    </form>
                </div>
          

        <br>
   
       <div>&nbsp;</div>
       <div>&nbsp;</div>
       
<div>
<div>
<b>Contact:</b>
<p> 
    Vishwakarma Institute of Technology <br>
    Savitribai Phule Pune University <br>
</p>
</div>
 <div>
<p> 
						&copy; 2021 &nbsp; Vishwakarma Institute of Technology
					</p>

</div>
</div>
    </body>
    <script type="text/javascript">
  let logo = document.getElementById("logo");
  logo.addEventListener('click', ()=>{
    location.href = "index.jsp";
  })
</script>
</html>
