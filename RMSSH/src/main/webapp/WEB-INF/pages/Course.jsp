<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@page isELIgnored="false"%>

<div class="text-center" style="margin-left: -180;">
	<h1 class="text-primary">

		<c:choose>
			<c:when test="${form.id > 0}">
				<b><s:message code="label.editCourse"></s:message></b>

			</c:when>
			<c:otherwise>
				<b><s:message code="label.addCourse"></s:message></b>
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
	<sf:form action="Course" method="post" class="form-horizontal"
		commandName="form">


		<sf:hidden path="id" />
		<sf:hidden path="createdBy"></sf:hidden>
		<sf:hidden path="modifiedBy"></sf:hidden>
		<sf:hidden path="createdDatetime"></sf:hidden>
		<sf:hidden path="modifiedDatetime"></sf:hidden>



		<div class="form-group">
			<sf:label path="courseName" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.courseName1"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -160;">
				<sf:input path="courseName" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="courseName" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>


		<div class="form-group">
			<sf:label path="description" for="inputPassword3"
				class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.description"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -160;">
				<sf:input path="description" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="description" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>


		<div class="form-group">
			<sf:label path="duration" for="inputPassword3"
				class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.duration"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -160;">
				<sf:input path="duration" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="duration" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>


		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" style="margin-left: -110;"
				class="btn btn-primary" name="operation" value="Save">
				<span class="glyphicon glyphicon-floppy-save"></span>
				<s:message code="label.save"></s:message>
			</button>
			&emsp;
			<button type="submit" class="btn btn-primary" name="operation"
				value="CANCEL">
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
