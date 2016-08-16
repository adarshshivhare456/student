<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.laoa.util.UtilConstant"%>
<%@page import="com.laoa.delegate.StateDelegate"%>
<%@page import="com.laoa.form.ProfileTo"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.*"%>

<%
	if (session.getAttribute("logintype") == null) {

		RequestDispatcher rd = request
				.getRequestDispatcher("./Login.jsp");
		rd.forward(request, response);
%>
<%
	}
%>

<html>
	<head>
<script language="javascript" >
function checkName()
{
re = /^[A-Za-z]+$/;
if(!re.test(document.department.departmentLocation.value))
{
alert('departmentLocation not allows to numaric values');
}
}</script>
		<script language="JavaScript"
			src="<%=request.getContextPath()
					+ "/scripts/gen_validatorv31.js"%>"
			type="text/javascript"></script>
			
	
	<script language="javascript">
function sub() {
	var stationid = document.station.state_id.value;
    if(stationid==""){
      alert("Please select any state");
      return false;
    }else{
	   location.href = "./AddPoliceStation.jsp?state_id=" +stationid;
	   
	}
}
</script>
	
	
			
			<script language="JavaScript" src="scripts/gen_validatorv31.js"
				type="text/javascript">
</script>
			<script language="JavaScript" type="text/javascript"
				src="scripts/ts_picker.js">
</script>
			<script language="JavaScript1.1" src="scripts/pass.js">
</script>
			<script type="text/javascript" src="scripts/image.js">
</script>
			<script type="text/javascript" src="scripts/general.js">
</script>
			<script type="text/javascript" src="scripts/adi.js">
</script>
			<script type="text/javascript" src="scripts/form_validation.js">
</script>

			<script language="JavaScript" src="images/javascripts.js">
</script>
			<script language="JavaScript" src="scripts/pop-closeup.js">
</script>
			
		
			
	</head>
	<body>
		<jsp:include page="Header.jsp"></jsp:include>
		<center>
			<b><h2>
				
				<font color=""><center>CITY REGISTRATION FORM</center>
				
				</h2> </b>
		</center>
		<form method='post'
			action="<%=request.getContextPath() + "/AddCityAction"%>"
			name="station">
			<table border='0' cellspacing=2 align="center" bgcolor="">
			
			          
			
				<tr>
					<td align='right'>
						<b>State Name:</b>
					</td>
					<td>
					
					<select name="statename" id="select"
							onchange="javascript:if(document.station.statename.value==''){alert('Select Any State');} else{ location.href='./ViewDistrctForCityAction?statename='+document.station.statename.value;}">
							<c:choose>
								<c:when test="${requestScope.statename ne null}">
									<option value="${requestScope.statename}">
										${requestScope.statename}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
									<c:if test="${not empty stateinfo}">
										<c:forEach var="State" items="${stateinfo}">
											<option value="${State.statename}">
												${State.statename}
											</option>
										</c:forEach>
									</c:if>
								</c:otherwise>
							</c:choose>


						</select>
						<input type="hidden" value="${requestScope.statename}" name="stname">
							
					
					</td>
					
				</tr>
				<tr>
					<td align='right'>
						<b>District :</b>
					</td>
					<td>
						
						<select name="districtname" id="select" >
							<c:choose>
								<c:when test="${requestScope.districtname ne null}">
									<option value="${requestScope.districtname}">
										${requestScope.districtname}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
								</c:otherwise>
							</c:choose>



							<c:if test="${not empty distinfo}">
								<c:forEach var="State" items="${distinfo}">
									<option value="${State.districtname}">
										${State.districtname}
									</option>
								</c:forEach>
							</c:if>



						</select>
						<input type="hidden" value="${requestScope.districtname}"
							name="dtname">
						
						</td>
				<tr>
				
			
				
				<tr>
					<td align='right'>
						<b>CityName :</b>
					</td>
					<td>
						<input type='text' name="cityname">
					</td>
				<tr>
				
				
				<tr>
					<td align='right'>
						<input type='submit' name=submit value='Add'> 
					</td>
					<td align='left'>
						<input type='reset' name=Reset value='Reset'>
					</td>
				</tr>
			</table>
		</form>
		<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("station");


 frmvalidator.addValidation("statename","req","please select statename");
 frmvalidator.addValidation("districtname","req","please select districtname");

//frmvalidator.addValidation("dor","req","please Enter date");

 frmvalidator.addValidation("cityname", "req", "Please enter stationname");
 frmvalidator.addValidation("cityname", "maxlen=20","Max length for stationname is 20");
 frmvalidator.addValidation("cityname", "alpha","  stationname Alphabetic chars only");
 

 



 

  </script>
		<br />
		
	</body>
</html>

