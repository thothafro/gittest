<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="<c:url value="/resources/dojo/dojo.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/resources/spring/Spring.js"/>"> </script>
<script type="text/javascript" src="<c:url value="/resources/spring/Spring-Dojo.js"/>"> </script>
<h1>Home</h1>

<p>This is a simple tiles example.</p>

<p>The main body that you are reading is in <i>/WEB-INF/jsp/HOME.jsp</i> and the request for 
<i>/home.html</i> is rendered using the <i>home</i> Tiles definition located in 
<i>/WEB-INF/tiles-defs/templates.xml</i>.</p>

<p>timestamp: ${date}</p>

<a id="getDate" href="${flowExecutionUrl}&_eventId=refresh">Reload </a>
<script type="text/javascript">
	Spring.addDecoration(new Spring.AjaxEventDecoration({
	elementId:"getDate",
	event:"onclick",
	params: {fragments:"body"}
	}));
</script>

