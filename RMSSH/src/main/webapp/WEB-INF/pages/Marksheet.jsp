<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@page isELIgnored="false"%>
<script type="text/javascript">
	function AllowSingleSpaceNotInFirstAndLast() {
		var obj = document.getElementById('inputEmail3');
		obj.value = obj.value.replace(/^\s+|\s+$/g, "");
		var CharArray = obj.value.split(" ");
		if (CharArray.length > 1) {
			alert("Roll No. cannot contain space");
			return false;
		}
		return true;
	}
</script>


<div class="text-center" style="margin-top: -15; margin-left: -180;">
	<h1 class="text-primary">

		<c:choose>
			<c:when test="${form.id > 0}">
				<b><s:message code="label.editMarksheet"></s:message></b>

			</c:when>
			<c:otherwise>
				<b><s:message code="label.addMarksheet"></s:message></b>
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
	<sf:form action="Marksheet" method="post" class="form-horizontal"
		commandName="form">


		<sf:hidden path="id" />
		<sf:hidden path="createdBy"></sf:hidden>
		<sf:hidden path="modifiedBy"></sf:hidden>
		<sf:hidden path="createdDatetime"></sf:hidden>
		<sf:hidden path="modifiedDatetime"></sf:hidden>



		<div class="form-group">
			<sf:label path="rollNo" class="col-sm-3 ">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.rollNo"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -160;">
				<sf:input path="rollNo" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="rollNo" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="studentId" class="col-sm-3 control-label ">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.student"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -160;">
				<sf:select class="form-control" STYLE="width: 193px" size="0"
					path="studentId">
					<sf:option value="" label="Select" />
					<sf:options items="${studentList}" itemValue="id" itemLabel="value" />
				</sf:select>
			</div>
			<sf:errors path="studentId" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="chemistry" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.chemistry"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -160;">
				<sf:input path="chemistry" maxlength="3" class="form-control"
					id="inputError1" />

			</div>
			<sf:errors path="chemistry" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="physics" class="col-sm-3 ">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.physics"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -160;">
				<sf:input path="physics" maxlength="3" class="form-control"
					id="inputError1" />

			</div>
			<sf:errors path="physics" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group">
			<sf:label path="maths" class="col-sm-3 ">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.maths"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -160;">
				<sf:input path="maths" maxlength="3" class="form-control"
					id="inputError1" />

			</div>
			<sf:errors path="maths" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="col-sm-offset-2 col-sm-10" style="margin-left: -2;">
			<button type="submit" class="btn btn-primary" name="operation"
				value="Save" onclick="return AllowSingleSpaceNotInFirstAndLast();">
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
