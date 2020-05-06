package com.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Appointment;

/**
 * Servlet implementation class AppointmentsAPI
 */
@WebServlet("/AppointmentsAPI")
public class AppointmentsAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Appointment appointmentObj = new Appointment();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentsAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in insert");
		
		DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
		Calendar cal = Calendar.getInstance();
		String m_appointment_time = dateFormat.format(cal.getTime());
		
		String output = appointmentObj.makeAppointment(request.getParameter("m_appointment_patient"), 
				request.getParameter("m_appointment_category"), 
				request.getParameter("m_appointment_hospital"), 
				request.getParameter("m_appointment_date"), 
				request.getParameter("m_appointment_time"), 
				request.getParameter("m_appointment_description"));
		System.out.println(" insert servlet complete");
		
		response.getWriter().write(output);
		//doGet(request, response);
	}
	

	
	protected void doPut(HttpServletRequest request, HttpServletResponse response)    
			throws ServletException, IOException 
	{  
		Map paras = getParasMap(request); 
	 
	 String output = appointmentObj.updateAppointment(paras.get("hidAppointmentIDSave").toString().replace("+", " "), 
			 paras.get("m_appointment_patient").toString().replace("+", " "), 
			 paras.get("m_appointment_category").toString().replace("+", " "), 
			 paras.get("m_appointment_hospital").toString().replace("+", " "), 
			 paras.get("m_appointment_date").toString().replace("+", " "), 
			 paras.get("m_appointment_time").toString().replace("%3A", ":"), 
			 paras.get("m_appointment_description").toString().replace("+", " ")); 
	 
	 response.getWriter().write(output); 
	} 
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)    
			throws ServletException, IOException 
	{  
		Map paras = getParasMap(request); 
	 
		String output = appointmentObj.deleteAppointment(paras.get("t_payment_no").toString()); 
	 
		response.getWriter().write(output); 
	}
	
	// Convert request parameters to a Map 
	private static Map getParasMap(HttpServletRequest request) 
	{  
		Map<String, String> map = new HashMap<String, String>();  
		try  
		{ 
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");   
			String queryString = scanner.hasNext() ?          
					scanner.useDelimiter("\\A").next() : "";   
			scanner.close(); 
			 
			  String[] params = queryString.split("&");   
			  for (String param : params)   
			  {
				  String[] p = param.split("=");    
				  map.put(p[0], p[1]);   
			  }  
		 }  
		catch (Exception e)  
		{  
			
		}  
		System.out.println(map);
		return map; 
		
	}

}
