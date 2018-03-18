<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%--   <%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>   --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%-- <c:forEach items="${cs}" var="c" >
<tr>
<td>${c}</td>
</tr>
</c:forEach> --%>

<div>
${cs}
</div>


<%-- <json:array  name="items" var="cs" >
   <json:object>  
      <json:property name="title" value="${cs.projectname}"/>  
      <json:property name="description" value="${cs.structure}"/>  
      <json:property name="imageUrl" value="${cs.address}"/>  
      <json:property name="price" value="${cs.belongdist}"/>  
      <json:property name="qty" value="${cs.secu_monit}"/>  
    </json:object> 
</json:array> --%>
 

</body>
</html>