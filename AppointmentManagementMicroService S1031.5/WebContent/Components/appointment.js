$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
		
	}
	$("#alertError").hide();
});

// SAVE ---------------------------------------------------
$(document).on("click", "#btnSave", function(event) 
{ 
	
	//Clear status msges------------------------
	$("#alertSuccess").text(""); 
	$("#alertSuccess").hide(); 
	$("#alertError").text(""); 
	$("#alertError").hide(); 
	
	//Form validation---------------------------
	var status = validateAppointmentForm();
	
	//If not valid------------------------------
	if (status != true) 
	{  
		$("#alertError").text(status);  
		$("#alertError").show(); 
		return; 
	} 
	
	// If valid 
	var type = ($("#hidAppointmentIDSave").val()=="") ? "POST" : "PUT";
	
	$.ajax(
	{
		url : "AppointmentsAPI",
		type : type,
		data : $("#formAppointment").serialize(),
		dataType : "text",
		complete : function(response, status)
		{
			onAppointmentSaveComplete(response.responseText, status);
		}
	});
	
});

function onAppointmentSaveComplete(response, status) 
{  
	if (status == "success")  
	{   
		var resultSet = JSON.parse(response); 

		if (resultSet.status.trim() == "success")   
		{   
			$("#alertSuccess").text("Successfully saved.");    
			$("#alertSuccess").show(); 

			$("#divAppointmentsGrid").html(resultSet.data);   
		} else if (resultSet.status.trim() == "error")   
		{    
			$("#alertError").text(resultSet.data);    
			$("#alertError").show();   
		} 

	} else if (status == "error")  
	{   
		$("#alertError").text("Error while saving.");   
		$("#alertError").show(); 
	} else  
	{   
		$("#alertError").text("Unknown error while saving..");   
		$("#alertError").show();  
	} 

	$("#hidAppointmentIDSave").val("");  
	$("#formAppointment")[0].reset(true); 
} 

// UPDATE------------------------------------------------------------
$(document).on("click", ".btnUpdate", function(event)
{
	$("#hidAppointmentIDSave").val($(this).closest("tr").find('#hidAppoIDUpdate').val());
	$("#m_appointment_patient").val($(this).closest("tr").find('td:eq(1)').text());
	$("#m_appointment_category").val($(this).closest("tr").find('td:eq(2)').text());
	$("#m_appointment_hospital").val($(this).closest("tr").find('td:eq(3)').text());
	$("#m_appointment_date").val($(this).closest("tr").find('td:eq(4)').text());
	$("#m_appointment_time").val($(this).closest("tr").find('td:eq(5)').text());
	$("#m_appointment_description").val($(this).closest("tr").find('td:eq(6)').text());
});

//REMOVE-------------------------------------------------- 
$(document).on("click", ".btnRemove", function(event) 
{  
	$.ajax(  
	{   
		url : "AppointmentsAPI",   
		type : "DELETE",   
		data : "t_payment_no=" + $(this).data("t_payment_no"),   
		dataType : "text",   
		complete : function(response, status)   
		{    
			onAppointmentDeleteComplete(response.responseText, status);   
		}  
	});  
}); 

function onAppointmentDeleteComplete(response, status) 
{  
	if (status == "success")  
	{   
		var resultSet = JSON.parse(response); 

		if (resultSet.status.trim() == "success")   
		{    
			$("#alertSuccess").text("Successfully deleted.");    
			$("#alertSuccess").show(); 

			$("#divAppointmentsGrid").html(resultSet.data);   
		} else if (resultSet.status.trim() == "error")   
		{    
			$("#alertError").text(resultSet.data);    
			$("#alertError").show();   
		} 

	} else if (status == "error")  
	{   
		$("#alertError").text("Error while deleting.");   
		$("#alertError").show();  
	} else  
	{   
		$("#alertError").text("Unknown error while deleting..");   
		$("#alertError").show();  
	} 
} 

// Client-Model------------------------------------------
function validateAppointmentForm() 
{  
	// NAME  
	if ($("#m_appointment_patient").val().trim() == "")  
	{   
		return "Insert patient name.";  
	} 
	 
	 // Category  
	if ($("#m_appointment_category").val() === "0")  
	{   
		return "Select category.";  
	} 
	 
	 // Hospital  
	if ($("#m_appointment_hospital").val() == "0")  
	{   
		return "Select hospital.";  
	} 
	
	// Date
	if ($("#m_appointment_date").val() == "0")
	{
		return "Select date.";
	}
	

	// Time
	if ($("#m_appointment_time").val() == "0")
	{
		return "Select time.";
	}
	
	return true; 
}

