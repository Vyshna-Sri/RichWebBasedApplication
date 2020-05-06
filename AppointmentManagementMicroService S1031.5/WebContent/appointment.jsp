<%@page import="com.model.Appointment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment details</title>
<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="Components/jquery-3.2.1.min.js"></script> 
<script src="Components/appointment.js"></script> 
</head>
<body>
	<div class="container"> 
 
  		<div class="row">    
  			<div class="col-8"> 
 
    			<h1 class="m-3">Appointment Form</h1> 
 
    			<form id="formAppointment"> 
    			
    				<!-- NAME --> 
    				<div class="input-group input-group-sm mb-3">  
    					<div class="input-group-prepend">   
    						<span class="input-group-text" id="lblName">Patient Name: </span>  
    					</div>  
    					<input type="text" id="m_appointment_patient" name="m_appointment_patient"> 
    				</div>
    				 
    				<br>
    				<!-- Category --> 
    				<div class="input-group input-group-sm mb-3">  
    					<div class="input-group-prepend">   
    						<span class="input-group-text" id="lblName">Specialist Category: </span>  
    					</div>  
    					<select id="m_appointment_category" name="m_appointment_category">
    						<option value="0">--Select Category--</option>
    						<option value="Allergy Specialist">Allergy Specialist</option>
    						<option value="Back Pain Therapist">Back Pain Therapist</option>
    						<option value="Cardiologist">Cardiologist</option>
    						<option value="Chest Specialist">Chest Specialist</option>
    						<option value="Dental Surgeon">Dental Surgeon</option>
    						<option value="Dietician and Nutrician">Dietician and Nutrician</option>
    						<option value="Endocrinologist/Diabetologist">Endocrinologist/Diabetologist</option>
    						<option value="ENT Surgeon">ENT Surgeon</option>
    						<option value="Eye Surgeon">Eye Surgeon</option>
    						<option value="General Surgeon">General Surgeon</option>
    						<option value="Histopathologist">Histopathologist</option>
    						<option value="Neuro Surgeon">Neuro Surgeon</option>
    						<option value="Oncologist">Oncologist</option>
    						<option value="Orthopaedic Surgeon">Orthopaedic Surgeon</option>
    						<option value="Paediatrician">Paediatrician</option>
    						<option value="Physician">Physician</option>
    						<option value="Phychiatrist">Phychiatrist</option>
    						<option value="Speech Therapist">Speech Therapist</option>
    					</select> 
    				</div>
    				
    				<br>
    				<!-- Hospital --> 
    				<div class="input-group input-group-sm mb-3">  
    					<div class="input-group-prepend">   
    						<span class="input-group-text" id="lblName">Hospital: </span>  
    					</div>  
    					<select id="m_appointment_hospital" name="m_appointment_hospital">
    						<option value="0">--Select Hospital--</option>
    						<option value="Asiri Hospital - Colombo 5">Asiri Hospital - Colombo 5</option>
    						<option value="Borella Private Hospital">Borella Private Hospital</option>
    						<option value="Delmon Hospital - Colombo 6">Delmon Hospital - Colombo 6</option>
    						<option value="Durdans Hospital - Colombo 3">Durdans Hospital - Colombo 3</option>
    						<option value="Hemas Hospital">Hemas Hospital</option>
    						<option value="Lanka Hospital">Lanka Hospital</option>
    						<option value="Nawaloka Hospital">Nawaloka Hospital</option>
    						<option value="Royal Hospital - Colombo 6">Royal Hospital - Colombo 6</option>
    						<option value="The Central Hospital - Colombo 10">The Central Hospital - Colombo 10</option>
    						<option value="Wattala Private Hospital Ltd">Wattala Private Hospital Ltd</option>
    					</select> 
    				</div>
    				
    				<br>
    				<!-- Date --> 
    				<div class="input-group input-group-sm mb-3">  
    					<div class="input-group-prepend">   
    						<span class="input-group-text" id="lblName">Appointment Date: </span>  
    					</div>
    					<input type="date" id="m_appointment_date" name="m_appointment_date">  
    					
    				</div>
    				
    				<br>
    				<!-- Time --> 
    				<div class="input-group input-group-sm mb-3">  
    					<div class="input-group-prepend">   
    						<span class="input-group-text" id="lblName">Appointment Time: </span>  
    					</div>  
    					<input type="text" id="m_appointment_time" name="m_appointment_time">
    				</div>
    				
    				<br>
    				<!-- Description --> 
    				<div class="input-group input-group-sm mb-3">  
    					<div class="input-group-prepend">   
    						<span class="input-group-text" id="lblName">Description: </span>  
    					</div>  
    					<input type="text" id="m_appointment_description" name="m_appointment_description"> 
    				</div> 
    				
    				
 
 				<input type="button" id="btnSave" value="Save" class="btn btn-primary">
 				<input type="hidden" id="hidAppointmentIDSave" name="hidAppointmentIDSave" value="">
 				 
    				    
    			</form> 
    			
    				<div id="alertSuccess" class="alert alert-success"></div>   
    				<div id="alertError" class="alert alert-danger"></div> 
    			 <br>
    			 <div id="divAppointmentsGrid">
    			 <%
    			 	Appointment appointmentObj = new Appointment();
    			 	out.print(appointmentObj.viewAllAppointment());
    			 %>
    			 
  			</div>   
  		</div> 
 </div>
 	</div> 
</body>
</html>