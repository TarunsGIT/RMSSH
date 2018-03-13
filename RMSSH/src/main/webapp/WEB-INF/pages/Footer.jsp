<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<hr>
<head>

<script type="text/javascript">
	$('#sandbox-container .input-group.date').datepicker({
		autoclose : true,
		todayHighlight : true
	});
</script>
</head>

<div class="container  text-center" style="margin-left: -20;">
	<p style="position: fixed; bottom: 0; width: 100%; color: PURPLE"
		align="center">
		<b> &#9400; <s:message code="label.Copyrights" /></b>
	</p>
</div>