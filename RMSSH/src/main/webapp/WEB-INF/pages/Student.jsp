<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="text-center " style="margin-left: -150; margin-top: -15;">
	<h1 class="text-primary">

		<c:choose>
			<c:when test="${form.id > 0}">
				<b><s:message code="label.editStudent"></s:message></b>

			</c:when>
			<c:otherwise>
				<b><s:message code="label.addStudent"></s:message></b>
			</c:otherwise>
		</c:choose>

	</h1>
</div>
<br>
<div class="text-center pull-center" style="margin-left: 45;">
	<c:if test="${success!= null }">
		<div class="alert alert-success" role="alert">${success}</div>
	</c:if>
	<c:if test="${error!= null }">
		<div class="alert alert-danger" role="alert">${error}</div>
	</c:if>
</div>
<div class="col-sm-offset-4">
	<sf:form id="sandbox-container" action="Student" method="POST"
		class="form-horizontal" commandName="form">


		<sf:hidden path="id" />
		<sf:hidden path="createdBy" />
		<sf:hidden path="modifiedBy" />
		<sf:hidden path="createdDatetime" />
		<sf:hidden path="modifiedDatetime" />


		<div class="form-group">
			<sf:label path="firstName" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.firstName1"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -150;">
				<sf:input path="firstName" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="firstName" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="lastName" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.lastName1"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -150;">
				<sf:input path="lastName" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="lastName" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="email" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.email"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -150;">
				<sf:input path="email" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="email" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<label class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.dob" />
				</div>
			</label>
			<div class="col-sm-4" style="margin-left: -150;">
				<div class="input-group date">
					<sf:input class="form-control" path="dob" id="dob" readonly="true" />
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-calendar" aria-hidden="true"></span></span>
				</div>
			</div>
			<sf:errors path="dob" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>
		<div class="form-group">
			<sf:label path="mobileNo" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.mobileNo"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -150;">
				<sf:input path="mobileNo" maxlength="10" class="form-control"
					id="inputEmail3" />

			</div>
			<sf:errors path="mobileNo" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="collegeId" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.collegeName1"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4 dropdown" style="margin-left: -150;">

				<sf:select class="form-control" STYLE="width: 198px" size="0"
					path="collegeId">
					<li><sf:option value="" label="Select" /></li>
					<li><sf:options items="${collegeList}" itemValue="id"
							itemLabel="name" /></li>
				</sf:select>


			</div>
			<sf:errors path="collegeId" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>





		<div class="col-sm-offset-2 col-sm-10" style="margin-left: 5;">
			<button type="submit" class="btn btn-primary" name="operation"
				value="Save">
				<span class="glyphicon glyphicon-floppy-save"></span>
				<s:message code="label.save"></s:message>
			</button>
			&emsp;
			<button type="submit" class="btn btn-primary" name="operation"
				value="Cancel">
				<span class="glyphicon glyphicon-remove"></span>
				<s:message code="label.cancel"></s:message>
			</button>

			<%-- 			<c:if test="${form.id > 0}">
				<button type="submit" class="btn btn-primary" name="operation"
					value="Delete">Delete</button>
			</c:if>
 --%>
		</div>

	</sf:form>
</div>
<script type="text/javascript">
	$('#sandbox-container .input-group.date').datepicker({
		autoclose : true,
		todayHighlight : true
	});
</script>
