<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   <br><br>  
<center><h1 style="color:red">User Details</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr>
    <th>Id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
     <th>Gender</th>
      <th>Country</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
   <c:forEach var="user" items="${users}">   
   <tr>  
   <td>${user.id}</td>  
   <td>${user.name}</td>  
   <td>${user.email}</td>  
   <td>${user.password}</td>  
   <td>${user.gender}</td> 
   <td>${user.country}</td>
   <td><a href="/edituser/${user.id}">Edit</a></td>
   <td><a href="/deleteUser/${user.id}">Delete</a></td>
    </tr>  
   </c:forEach>  
   </table>  
   <br/>  </center>
   