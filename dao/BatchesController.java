package com.cybage.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.chrono.ChronoLocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cybage.model.Batches;
import com.cybage.service.BatchService;

/**
 * Servlet implementation class BatchesController
 */
@WebServlet("/BatchesController")
public class BatchesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BatchesController() {
        super();
        // TODO Auto-generated constructor stub
    }

    BatchService batchService = null;
   	RequestDispatcher requestDispatcher =null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		batchService = new BatchService();
//		List<Batches> batchList = batchService.getBatches();
//		request.setAttribute("list", batchList);
//		requestDispatcher= request.getRequestDispatcher("/batchTable.jsp");
//		requestDispatcher.forward(request, response);
		
		Batches batch = new Batches();
		String startDate = batchService.getDate();
		System.out.println(startDate);
//		ChronoLocalDate cal = Calendar.getInstance().getTime();
		LocalDate currentDate= LocalDate.now();
		LocalDateTime currentDate = LocalDateTime.now();
	//	SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		LocalDate Start_Date = LocalDate.parse("2020-09-12");
		System.out.println(Start_Date);
		LocalDate newDate = Start_Date.plusMonths(6);
		System.out.println(newDate);
		if(newDate.compareTo(currentDate)) {
			
		}
//		String today = df.format(date);
//		String resultDate = today-startDate;
//		try {
//			Date date1 = formateDate.parse(startDate);
//			
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		request.setAttribute("startDate", startDate);
		requestDispatcher= request.getRequestDispatcher("/temp.jsp");
		requestDispatcher.forward(request, response);
	}


}
