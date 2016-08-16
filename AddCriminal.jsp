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



<script type="text/javascript">


function City()
{

var districtname=document.getElementById('districtname').value;
var statename = document.getElementById('stname').value;
<!--alert(sname);-->

if(districtname=="")
alert(districtname);
else{

window.location.href="./ViewAllCityForCriminal?districtname="+districtname+"&statename="+statename;
}
}

</script>








<script type="text/javascript">


function policestation()
{

var cityname=document.getElementById('cityname').value;	
var districtname=document.getElementById('districtname').value;
var statename = document.getElementById('stname').value;
<!--alert(sname);-->

if(districtname=="")
alert(districtname);
else{

window.location.href="./ViewPolicestationForcriminal?cityname="+cityname+"&districtname="+districtname+"&statename="+statename;
}
}

</script>





























<script type="text/javascript">


function FirId()
{

	var stationname=document.getElementById('stationname').value;
	var cityname= document.getElementById('cityname').value;
var districtname=document.getElementById('districtname').value;
var statename = document.getElementById('stname').value;

<!--alert(sname);-->

if(districtname=="")
alert(districtname);
else{

window.location.href="./ViewFirIdAction?stationname="+stationname+"&cityname="+cityname+"&districtname="+districtname+"&statename="+statename;
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
				
				<font color=""><center>CRIMINAL REGISTRATION FORM</center>
				
				</h2> </b>
		</center>
		<form method='post'
			action="<%=request.getContextPath() + "/AddCriminalDetails"%>"
			name="station">
			<table border='1' cellspacing=2 align="center" bgcolor="" bordercolor="black">
			
			          
			
				<tr>
					<td align='right'>
						<b>State Name:</b>
					</td>
					<td>
					
					<select name="statename" id="select"
							onchange="javascript:if(document.station.statename.value==''){alert('Select Any State');} else{ location.href='./ViewalldistAction?statename='+document.station.statename.value;}">
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
						
						<select name="districtname" id="select" onchange="return City()">
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
						
						
						</td>
				</tr>
				
				
				
				
				
				<tr>
					<td align='right'>
						<b>CityName:</b>
					</td>
					<td>
					
					<select name="cityname" id="select" onchange="return policestation()">
							<c:choose>
								<c:when test="${requestScope.cityname ne null}">
									<option value="${requestScope.cityname}">
										${requestScope.cityname}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
									<c:if test="${not empty cityinfo}">
										<c:forEach var="station" items="${cityinfo}">
											<option value="${station.cityname}">
												${station.cityname}
											</option>
										</c:forEach>
									</c:if>
								</c:otherwise>
							</c:choose>


						</select>
						
			
					
					</td>
					
				</tr>
				
				
				
				
				
				

				
				<tr>
					<td align='right'>
						<b>PoliceStationName:</b>
					</td>
					<td>
					
					<select name="stationname" id="select" onchange="return FirId();">
							<c:choose>
								<c:when test="${requestScope.stationname ne null}">
									<option value="${requestScope.stationname}">
										${requestScope.stationname}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
									<c:if test="${not empty psinfo}">
										<c:forEach var="station" items="${psinfo}">
											<option value="${station.stationname}">
												${station.stationname}
											</option>
										</c:forEach>
									</c:if>
								</c:otherwise>
							</c:choose>


						</select>
						
			
					
					</td>
					
				</tr>
				
				
				
				
				
				
				<tr>
					<td align='right'>
						<b>Fir:</b>
					</td>
					<td>
					
					<select name="firid" id="select">
							<c:choose>
								<c:when test="${requestScope.firid ne null}">
									<option value="${requestScope.firid}">
										${requestScope.firid}
									</option>
								</c:when>
								<c:otherwise>
									<option value="">
										--SELECT--
									</option>
									<c:if test="${not empty firinfo}">
										<c:forEach var="station" items="${firinfo}">
											<option value="${station.firid}">
												${station.firid}
											</option>
										</c:forEach>
									</c:if>
								</c:otherwise>
							</c:choose>


						</select>
						
							
					
					</td>
					
					<td border="0" align="left" rowspan="5" colspan='2'>


							<img alt="See Photo Here" id="previewField" src="images/flag.gif"
								height="150" width="120" />
								
					  </td>
					
				</tr>
				
				
				<tr>
					<td align='right'>
						<b>SIName :</b>
					</td>
					<td>
						<input type='text' name="loginid" value=<%=session.getAttribute("username") %>>
					</td>
				</tr>
		
					
			    		
				
				
			
				
				<tr>
					<td align='right'>
						<b>Name :</b>
					</td>
					<td>
						<input type='text' name="cname">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>Father :</b>
					</td>
					<td>
						<input type='text' name="fathername">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>Gender:</b>
					</td>
					<td align='right'>
							<select name="gender">
									<option value="select" selected="true">
										<font size="3" face="Verdana">Select </font>
									</option>

									<option value="Male">
										<font size="3" face="Verdana">Male</font>
									</option>
									<option value="Female">
										<font size="3" face="Verdana">Female</font>
									</option>
									
								</select>
								</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>Religion:</b>
					</td>
					<td>
						<input type='text' name="religion">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>Age:</b>
					</td>
					<td>
						<input type='text' name="age">
					</td>
				<tr>
				<tr>
					<td align='right'>
						<b>Height:</b>
					</td>
					<td>
						<input type='text' name="height">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>Complexion:</b>
					</td>
					<td>
						<input type='text' name="complexion">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>CRIME_ACTIVITY:</b>
					</td>
					<td>
						<input type='text' name="CRIME_ACTIVITY">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>IdentificationMark1:</b>
					</td>
					<td>
						<input type='text' name="IDMARK1">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>IdentificationMark2:</b>
					</td>
					<td>
						<input type='text' name="IDMARK2">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>Area/city:</b>
					</td>
					<td>
						<input type='text' name="area">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>ADDRESS:</b>
					</td>
					<td>
						<input type='text' name="address">
					</td>
				</tr>
				
				<tr>
					<td align='right'>
						<b>photo:</b>
					</td>
					<td>
						<input type='file' name="photo" class="textfield">
					</td>
				</tr>
			<tr>
					<td align='right'>
						<b>WANTED:</b>
					</td>
					<td>
						<input type='text' name="wanted">
					</td>
				</tr>	
				
				
				
				
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


  frmvalidator.addValidation("statename", "req", "Please select criminal statename");
  //frmvalidator.addValidation("firstName", "maxlen=20","Max length for FirstName is 20");
  //frmvalidator.addValidation("firstName", "alpha"," First Name Alphabetic chars only");

  frmvalidator.addValidation("districtname", "req", "Please select criminal districtname");
  //frmvalidator.addValidation("lastName", "maxlen=20", "Max length is 20");
  //frmvalidator.addValidation("lastName", "alpha"," Last Name Alphabetic chars only");
   frmvalidator.addValidation("firid", "req", "Please select your firid");

   frmvalidator.addValidation("cname", "req", "Please enter criminal name");
   frmvalidator.addValidation("cname", "maxlen=20","Max length for Name is 20");
   frmvalidator.addValidation("cname", "alpha","  Name Alphabetic chars only");


   frmvalidator.addValidation("fathername", "req", "Please enter criminal fathername");
   frmvalidator.addValidation("fathername", "maxlen=20","Max length for fathername is 20");
   frmvalidator.addValidation("fathername", "alpha","  fathername Alphabetic chars only");
    

   frmvalidator.addValidation("gender", "dontselect=0");

   frmvalidator.addValidation("religion", "req", "Please enter criminal religion");
   frmvalidator.addValidation("religion", "maxlen=20","Max length for religion is 20");
   frmvalidator.addValidation("religion", "alpha","  religion Alphabetic chars only");

   frmvalidator.addValidation("age", "req");
   frmvalidator.addValidation("age", "maxlen=2");
   frmvalidator.addValidation("age", "numeric");

   frmvalidator.addValidation("height", "req");
   frmvalidator.addValidation("height", "maxlen=3");
   frmvalidator.addValidation("height", "numeric");

   frmvalidator.addValidation("complexion", "req", "Please enter criminal complexion");
   frmvalidator.addValidation("complexion", "maxlen=20","Max length for complexion is 20");
   frmvalidator.addValidation("complexion", "alpha"," complexion Alphabetic chars only");

   frmvalidator.addValidation("CRIME_ACTIVITY", "req", "Please enter criminal CRIME_ACTIVITY");
   frmvalidator.addValidation("CRIME_ACTIVITY", "maxlen=20","Max length for CRIME_ACTIVITY is 20");
   frmvalidator.addValidation("CRIME_ACTIVITY", "alpha"," CRIME_ACTIVITY Alphabetic chars only");


   frmvalidator.addValidation("IDMARK1", "req", "Please enter criminal IDMARK1");
   frmvalidator.addValidation("IDMARK1", "maxlen=20","Max length for IDMARK1 is 20");
   frmvalidator.addValidation("IDMARK1", "alpha"," IDMARK1 Alphabetic chars only");


   frmvalidator.addValidation("IDMARK2", "req", "Please enter criminal IDMARK2");
   frmvalidator.addValidation("IDMARK2", "maxlen=20","Max length for IDMARK2 is 20");
   frmvalidator.addValidation("IDMARK2", "alpha"," IDMARK2 Alphabetic chars only");


   frmvalidator.addValidation("area", "req", "Please enter criminal area");
   frmvalidator.addValidation("area", "maxlen=20","Max length for area is 20");
   frmvalidator.addValidation("area", "alpha","  area Alphabetic chars only");


   frmvalidator.addValidation("address", "req", "Please enter criminal address");
   frmvalidator.addValidation("address", "maxlen=20","Max length for address is 20");
   frmvalidator.addValidation("address", "alpha","  address Alphabetic chars only");

   frmvalidator.addValidation("photo", "req", "Please enter criminal photo");


   frmvalidator.addValidation("wanted", "req", "Please enter wanted ");
   frmvalidator.addValidation("wanted", "maxlen=20","Max length for wanted is 20");
   frmvalidator.addValidation("wanted", "alpha","  wanted Alphabetic chars only");




   
   
  //frmvalidator.addValidation("gender", "dontselect=0");
  //frmvalidator.addValidation("birthdate", "req", "Please enter your birthdate");

  //frmvalidator.addValidation("photo", "req", "Please Load Your Photo");

  //frmvalidator.addValidation("email", "maxlen=50");
  //frmvalidator.addValidation("email", "req");
  //frmvalidator.addValidation("email", "email");

  //frmvalidator.addValidation("addressType", "dontselect=0");

  //frmvalidator.addValidation("houseNo", "req", "Please enter your House Number");

  //frmvalidator.addValidation("street", "req", "Please enter your Street Number");
  //frmvalidator.addValidation("phoneType", "dontselect=0");
  //frmvalidator.addValidation("phoneNo", "req");

  //frmvalidator.addValidation("phoneNo", "maxlen=10");
  //frmvalidator.addValidation("phoneNo", "numeric");
  //frmvalidator.addValidation("phoneNo", "Phone");

  //frmvalidator.addValidation("city", "req", "Please enter your city Name");
  //frmvalidator.addValidation("state", "req", "Please enter your State Name");
  //frmvalidator.addValidation("country", "req", "Please enter your Country Name");
  //frmvalidator.addValidation("pin", "req", "Please enter your pin Number");

  //frmvalidator.addValidation("userName", "req", "Please enter your Username");
  //frmvalidator.addValidation("password", "req", "Please enter your Password");
  //frmvalidator.addValidation("conformpassword", "req","Please enter your Confirm Password");
  //frmvalidator.addValidation("secrete", "req", "Please enter your Answer");
  //frmvalidator.addValidation("squest", "dontselect=0");
  //frmvalidator.addValidation("fax", "req", "Please enter Fax Number");


















  

  </script>
		<br />
		
	</body>
</html>

