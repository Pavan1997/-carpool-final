<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    

<html>
<head>
    <title>UserProfilePage</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script>
     



        // this is for jquery:
        $(document).ready(function () {
        	$("#submitbutton").css("display","none");
            $("#editbutton").click(function () {
            	$(this).css("display","none");
                $("#form").find(":input").each(function (index, value) {
                    value.removeAttribute("readonly");
                })
                
                $("#submitbutton").css("display","block");
            })
        }) 
    </script>

    <style>
        input:focus {
            border-color: red;
        }
    </style>
    
</head>
<body>
    <center>
        <h1>Display Details </h1>
        
    </center>
    <div align="center">
        <form action="updateuser" id="form" method="get">
    
        <table border="0" cellpadding="5">
            <caption><h2>Details of User Profile</h2></caption>
            <tr>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
               <th>gender</th>
                <th>mobileno</th>
            </tr>
            
                <tr>
                    <td><input type="text" name="firstname" value="${displayuser.firstname}" readonly="readonly"></td>
                    <td><input type="text" name="lastname" value="${displayuser.lastname}"  readonly="readonly" ></td>
                    <td><input type="text" name ="gender" value="${displayuser.gender}" readonly="readonly"></td>
                      <td><input type="text" name="mobileno" value="${displayuser.mobileno}" readonly="readonly"></td>
                      <td><input type="hidden" name="mail" value="${displayuser.emailId}" readonly></td>
                    <td><button id="editbutton" type="button">Edit</button>
                    <button id="submitbutton" type="submit">Update</button></td>
                    
                    <td>
                        <%-- <a href="/edit?id=<c:out value='${ }' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/delete?id=<c:out value='${}' />">Delete</a> --%>                     
                    </td>
                </tr>
            
        </table>
        </form>
    </div>   
</body>
</html>