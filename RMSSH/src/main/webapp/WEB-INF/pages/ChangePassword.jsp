<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ page isELIgnored="false"%>

<div class="text-center" style="margin-left: -150;">
	<h1 class="text-primary">
		<b><s:message code="label.changePassword"></s:message></b>
	</h1>
</div>
<br>
<div class="text-center pull-center" style="margin-left: 45">
	<c:if test="${success!= null }">
		<div class="alert alert-success" role="alert">${success}</div>
	</c:if>
	<c:if test="${error!= null }">
		<div class="alert alert-danger" role="alert">${error}</div>
	</c:if>
</div>

<div class="col-sm-offset-4">
	<sf:form method="post" class="form-horizontal" commandName="form">
		<sf:hidden path="id" />
		<sf:hidden path="createdBy"></sf:hidden>
		<sf:hidden path="modifiedBy"></sf:hidden>
		<sf:hidden path="createdDatetime"></sf:hidden>
		<sf:hidden path="modifiedDatetime"></sf:hidden>

		<div class="form-group">
			<sf:label path="oldPassword" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.oldPassword"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -105;">
				<sf:password class="form-control" path="oldPassword"
					showPassword="true" id="inputEmail3" />

			</div>
			<sf:errors path="oldPassword" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="newPassword" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.newPassword"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -105;">
				<sf:password class="form-control" path="newPassword"
					showPassword="true" id="inputEmail3" />

			</div>
			<sf:errors path="newPassword" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="confirmPassword" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.confirmPassword"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -105;">
				<sf:password class="form-control" path="confirmPassword"
					showPassword="true" id="inputEmail3" />

			</div>
			<sf:errors path="confirmPassword" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="col-sm-offset-2 col-sm-10" style="margin-left: 50;">
			<button type="submit" class="btn btn-primary" name="operation"
				value="Go">
				<span class="glyphicon glyphicon-floppy-save"></span>
				<s:message code="label.submit"></s:message>
			</button>
			&emsp; <a class="btn btn-primary labelMargin"
				href="<c:url value="http://localhost:8080/RMSSH/ctl/User/changepassword" />"><span
				class="glyphicon glyphicon-remove"></span> <s:message
					code="label.cancel" /></a>
		</div>


	</sf:form>
</div>