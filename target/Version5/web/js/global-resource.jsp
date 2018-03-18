add.js<%@ page language="java" %>
<%-- set document type to Javascript (addresses a bug in Netscape according to a web resource --%>
<%@ page contentType="application/x-javascript;charset=UTF-8" %>


var GLOBAL_MODULE_NAME = "<%=request.getContextPath()%>";
GLOBAL_MODULE_NAME = GLOBAL_MODULE_NAME.substring(1);

function getRealModuleName(md){
	if(md)return md;
	return GLOBAL_MODULE_NAME;
}

