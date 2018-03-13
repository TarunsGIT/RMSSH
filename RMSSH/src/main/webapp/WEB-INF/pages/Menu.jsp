<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>


<%@ page isELIgnored="false"%>
<!-- <link rel="stylesheet" src="../../css/bootstrap-datepicker3.min.css">
<script type="text/javascript" 	src="../../js/bootstrap-datepicker.min.js"></script> -->
<div class="span2 main-menu-span">
	<div class="well nav-collapse sidebar-nav">
		<ul class="nav nav-tabs nav-stacked main-menu">
			<li><a href="<c:url value="/Welcome" />"><s:message
						code="label.Home" /></a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false"><s:message code="label.language" /><span
					class="caret"></span></a>
				<ul class="dropdown-menu">

					<li><a href="?lang=en"><s:message code="label.English" /></a>
						<a href="?lang=hi"><s:message code="label.Hindi" /></a></li>
				</ul></li>


		</ul>

	</div>
	<!--/.well -->
</div>
<%-- <UL>
    <LI><a href="<c:url value="/Welcome" />"> Home </a></LI>
   <li> <a href="?lang=en">English</a> | <a href="?lang=hi">Hindi</a></li>
</UL> --%>


<c:if test="${sessionScope.user != null }">

	<div class="span2 main-menu-span">
		<div class="well nav-collapse sidebar-nav">
			<ul class="nav nav-tabs nav-stacked main-menu">

				<li><a href="<c:url value="/ctl/User/profile" />"><s:message
							code="label.myProfile" /></a></li>
				<li><a href="<c:url value="/ctl/User/changepassword" />"><s:message
							code="label.changePassword" /></a></li>

			</ul>

		</div>
		<!--/.well -->
	</div>


</c:if>

<%-- <c:if test="${sessionScope.user.roleId == 1}">
<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a  href="<c:url value="/ctl/User/search" />">User List </a></li>
						<li><a href="<c:url value="/ctl/Role" />">Role</a></li>
        <li><a href="<c:url value="/ctl/Role/search" />">Role List</a></li>
						
						
					</ul>
					
				</div><!--/.well -->
			</div>
    

</c:if> --%>