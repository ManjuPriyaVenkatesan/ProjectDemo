package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.HosterHostHouseBean;
import com.Implementation.TAPEImplementation;
import com.Interface.TAPEInterface;

/**
 * Servlet implementation class HosterHostHouseServlet
 */
@WebServlet("/HosterHostHouseServlet")
public class HosterHostHouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HosterHostHouseServlet() {
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
		doGet(request, response);
		
		String hosterhouseimage = request.getParameter("hosterhouseimage");
		String hosterhouseimagename = request.getParameter("hosterhouseimage");
		
		String path = "Local Full Path\\TAPE\\WORKSPACE\\TAPE\\WebContent\\images\\";
		
		String hosterhouseimagepath = path.concat(hosterhouseimage);
		System.out.println("Add House Image Path"+ hosterhouseimagepath);
		
		
		
		String hosterhouseid = request.getParameter("hosterhouseid");
		System.out.println("Add House id" + hosterhouseid);
		
		String hosterhouseemailid = request.getParameter("hosterhouseemailid");
		
		String hosterhousetitle = request.getParameter("hosterhousetitle");
		
		String hosterhouseaddress = request.getParameter("hosterhouseaddress");
		
		String hosterhousecity = request.getParameter("hosterhousecity");
		
		String hosterhousestate = request.getParameter("hosterhousestate");
		
		String hosterhousepincode = request.getParameter("hosterhousepincode");
		
		String hosterhousecountry = request.getParameter("hosterhousecountry");
		
		String hosterhouseavailablefrom = request.getParameter("hosterhouseavailablefrom");
		
		String hosterhouseavailableto = request.getParameter("hosterhouseavailableto");
		
		
		String hosterhouseadults = request.getParameter("hosterhouseadults");
		System.out.println("Add House adults" + hosterhouseadults);
		
		String hosterhousechildren = request.getParameter("hosterhousechildren");
		
		String hosterhousedistancefromcenter = request.getParameter("hosterhousedistancefromcenter");
		
		String hosterhouseminnoofdaystostay = request.getParameter("hosterhouseminnoofdaystostay");
		
		String hosterhousenoofbathrooms = request.getParameter("hosterhousenoofbathrooms");
		
		String hosterhousenoofbedrooms = request.getParameter("hosterhousenoofbedrooms");
		
		String hosterhousenoofbeds = request.getParameter("hosterhousenoofbeds");
		
		
		String hosterhousepetfriendly = request.getParameter("hosterhousepetfriendly");
		System.out.println("Add House Pet" + hosterhousepetfriendly);
		
		String hosterhousecarparking = request.getParameter("hosterhousecarparking");
		
		String hosterhousewirelessinternet = request.getParameter("hosterhousewirelessinternet");
		
		String hosterhousereservations = request.getParameter("hosterhousereservations");
		
		String hosterhouseprivateparking = request.getParameter("hosterhouseprivateparking");
		
		String hosterhousesmokingarea = request.getParameter("hosterhousesmokingarea");
		
		String hosterhousewheelchairaccessible = request.getParameter("hosterhousewheelchairaccessible");
		
		String hosterhousepool = request.getParameter("hosterhousepool");
		
		String hosterhousewashingmachine = request.getParameter("hosterhousewashingmachine");
		
		String hosterhousedryer = request.getParameter("hosterhousedryer");
		
		String hosterhousekitchenarea = request.getParameter("hosterhousekitchenarea");
		
		HosterHostHouseBean HHHB = new HosterHostHouseBean();
		
		HHHB.setHosterhouseaddress(hosterhouseaddress);
		HHHB.setHosterhouseadults(hosterhouseadults);
		HHHB.setHosterhouseavailablefrom(hosterhouseavailablefrom);
		HHHB.setHosterhouseavailableto(hosterhouseavailableto);
		HHHB.setHosterhousecarparking(hosterhousecarparking);
		HHHB.setHosterhousechildren(hosterhousechildren);
		HHHB.setHosterhousecity(hosterhousecity);
		HHHB.setHosterhousecountry(hosterhousecountry);
		HHHB.setHosterhousedistancefromcenter(hosterhousedistancefromcenter);
		HHHB.setHosterhousedryer(hosterhousedryer);
		HHHB.setHosterhouseemailid(hosterhouseemailid);
		HHHB.setHosterhouseid(hosterhouseid);
		HHHB.setHosterhouseimage(hosterhouseimagepath);
		HHHB.setHosterhouseimagepath(hosterhouseimagepath);
		HHHB.setHosterhousekitchenarea(hosterhousekitchenarea);
		HHHB.setHosterhouseminnoofdaystostay(hosterhouseminnoofdaystostay);
		HHHB.setHosterhousenoofbathrooms(hosterhousenoofbathrooms);
		HHHB.setHosterhousenoofbedrooms(hosterhousenoofbedrooms);
		HHHB.setHosterhousenoofbeds(hosterhousenoofbeds);
		HHHB.setHosterhousepetfriendly(hosterhousepetfriendly);
		HHHB.setHosterhousepincode(hosterhousepincode);
		HHHB.setHosterhousepool(hosterhousepool);
		HHHB.setHosterhouseprivateparking(hosterhouseprivateparking);
		HHHB.setHosterhousereservations(hosterhousereservations);
		HHHB.setHosterhousesmokingarea(hosterhousesmokingarea);
		HHHB.setHosterhousestate(hosterhousestate);
		HHHB.setHosterhousetitle(hosterhousetitle);
		HHHB.setHosterhousewashingmachine(hosterhousewashingmachine);
		HHHB.setHosterhousewheelchairaccessible(hosterhousewheelchairaccessible);
		HHHB.setHosterhousewirelessinternet(hosterhousewirelessinternet);
		HHHB.setHosterhouseimagename(hosterhouseimagename);
		
		TAPEInterface TI = new TAPEImplementation();
		int i = TI.HosterHostHouse(HHHB);
		
		if(i==1)
		{
			response.sendRedirect("HosterHome.jsp?emailid="+ hosterhouseemailid);
		}
		else
		{
			response.sendRedirect("error.jsp?emailid="+ hosterhouseemailid);
		}
		
	}

}
