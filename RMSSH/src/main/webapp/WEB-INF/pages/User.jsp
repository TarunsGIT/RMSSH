<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false"%>

<div class="text-center " style="margin-top: -30; margin-left: -230;">
	<h1 class="text-primary">

		<c:choose>
			<c:when test="${form.id > 0}">
				<b><s:message code="label.editUser"></s:message></b>

			</c:when>
			<c:otherwise>
				<b><s:message code="label.addUser"></s:message></b>
			</c:otherwise>
		</c:choose>

	</h1>
</div>
<div class="text-center pull-center" style="margin-left: 45">
	<c:if test="${success!= null }">
		<div class="alert alert-success" role="alert">${success}</div>
	</c:if>
	<c:if test="${error!= null }">
		<div class="alert alert-danger" role="alert">${error}</div>
	</c:if>
</div>

<div class="col-sm-offset-4">
	<sf:form action="User" method="POST" class="form-horizontal"
		commandName="form" id="sandbox-container">

		<sf:hidden path="id" />
		<sf:hidden path="lastLogin"></sf:hidden>
		<sf:hidden path="registeredIP"></sf:hidden>
		<sf:hidden path="createdBy"></sf:hidden>
		<sf:hidden path="modifiedBy"></sf:hidden>
		<sf:hidden path="createdDatetime"></sf:hidden>
		<sf:hidden path="modifiedDatetime"></sf:hidden>




		<div class="form-group">
			<sf:label path="firstName" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.firstName1"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -170;">
				<sf:input path="firstName" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="firstName" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group" style="margin-top: -5;">
			<sf:label path="lastName" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.lastName1"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -170;">
				<sf:input path="lastName" class="form-control" id="inputEmail3" />

			</div>
			<sf:errors path="lastName" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group" style="margin-top: -5;">
			<sf:label path="login" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.login"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -170;">
				<c:if test="${form.id==0}">
					<sf:input path="login" class="form-control" id="inputEmail3" />
				</c:if>
				<c:if test="${form.id>0}">
					<sf:input path="login" class="form-control" id="inputEmail3"
						readonly="true" />
				</c:if>
			</div>
			<sf:errors path="login" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<c:if test="${form.id==0}">

			<div class="form-group" style="margin-top: -5;">

				<label for="text" class="col-sm-3" style="margin-left: -100;">
					<sf:label path="password">
						<s:message code="label.password"></s:message>
					</sf:label>
				</label>
				<div class="col-sm-4" style="margin-left: -70;">

					<sf:password class="form-control" path="password"
						showPassword="true" />
				</div>
				<label class="control-label text-danger" for="inputError1">
					<sf:errors path="password" cssClass="error" />
				</label>

			</div>
		</c:if>

		<c:if test="${form.id>0}">
			<sf:hidden class="form-control" id="inputPassword3" path="password" />

		</c:if>


		<%-- <div class="form-group">
			<sf:label path="password" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.password"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -170;">
				<sf:password path="password" class="form-control"
					id="inputPassword3" />

			</div>
			<sf:errors path="password" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div> --%>


		<div class="form-group" style="margin-top: -5;">
			<label class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.dob" />
				</div>
			</label>
			<div class="col-sm-4" style="margin-left: -170;">
				<div class="input-group date">
					<sf:input class="form-control" path="dob" id="dob" readonly="true" />
					<span class="input-group-addon" id="basic-addon2"> <span
						class="glyphicon glyphicon-calendar"></span>
					</span>
				</div>
			</div>
			<sf:errors path="dob" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>

		<div class="form-group" style="margin-top: -5;">
			<sf:label path="mobileNo" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.mobileNo"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -170;">
				<sf:input path="mobileNo" maxlength="10" class="form-control"
					id="inputEmail3" />

			</div>
			<sf:errors path="mobileNo" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>


		<div class="form-group" style="margin-top: -5;">
			<sf:label path="roleId" class="col-sm-3 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.role"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -170;">
				<sf:select class="form-control" STYLE="width: 195px" size="0"
					path="roleId">
					<sf:option value="" label="Select" />
					<sf:options items="${roleList}" itemValue="id" itemLabel="name" />
				</sf:select>
			</div>
			<sf:errors path="roleId" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>


		<div class="form-group" style="margin-top: -5;">
			<sf:label path="gender" class="col-sm-2 control-label">
				<div class="text-left" style="margin-left: -100;">
					<s:message code="label.gender"></s:message>
				</div>
			</sf:label>
			<div class="col-sm-4" style="margin-left: -120;">
				<sf:radiobutton path="gender" value="Male" />
				<s:message code="label.male"></s:message>
				<sf:radiobutton path="gender" value="Female" />
				<s:message code="label.female"></s:message>
			</div>
			<sf:errors path="gender" cssClass="error"
				class="control-label text-danger" for="inputError1" />
		</div>



		<div class="col-sm-offset-2 col-sm-10"
			style="margin-left: 25; margin-top: -12;">
			<button type="submit" class="btn btn-primary"
				style="margin-left: -40;" name="operation" value="Save">
				<span class="glyphicon glyphicon-floppy-save"></span>
				<s:message code="label.save"></s:message>
			</button>
			&emsp;&emsp;
			<button type="submit" class="btn btn-primary" name="operation"
				value="Cancel">
				<span class="glyphicon glyphicon-remove"></span>
				<s:message code="label.cancel"></s:message>
			</button>

		</div>

	</sf:form>
</div>
