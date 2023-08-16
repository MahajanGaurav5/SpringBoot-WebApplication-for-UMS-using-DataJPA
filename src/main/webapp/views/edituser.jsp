<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   <br><br> 
   <center>
   <h1>Edit User Data</h1>
   <form:form method="POST" action="/editu">
   
   <table>
   <tr>
   <td></td>
   <td><form:input path="id"/></td>
   </tr>
   <tr>
   <td>Name:</td>
   <td><form:input path="name"/></td>
   </tr>
   <tr>
   <td>Email:</td>
   <td><form:input path="email"/></td>
   </tr>
   <tr>
   <td>Password:</td>
   <td><form:input path="password"/></td>
   </tr>
   <tr>
   <td>Gender:</td>
   <td><form:input path="gender"/></td>
   </tr>
   <tr>
   <td>Country:</td>
   <td><form:input path="country"/></td>
   </tr>
   <tr>
   <td></td>
   <td><input type="submit" value="EditSave"/></td>
   </tr>
   
   </table>
   
   </form:form>
   <a href="/">Home</a><p></p>
   <a href="/viewusers">View All Users</a><p></p>
   <a href="/adduser">Add New User Here</a>
   </center>