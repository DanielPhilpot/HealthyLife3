package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import model.Meal;
import model.ScheduleItem;
import model.User;

public class SpringController extends AbstractController{
	
	private User currentUser; 
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		String action = request.getRequestURI();
		System.out.println("action is " + action);
		
		HttpSession session = request.getSession();
		currentUser = (User) session.getAttribute("user");
		
		
		if (action.equals("/Healthy-Life-Git/login.html")) {
			//ModelAndView modelandview = new ModelAndView("welcome");
			//modelandview.addObject("welcomeMessage", "Test Message");
			
			boolean isValid = currentUser.validateUser(request.getParameter("username"), request.getParameter("password"));
			
			if(isValid) {
				
				session.setAttribute("username", request.getParameter("username"));		
				session.setAttribute("sex", currentUser.getSex());
				ModelAndView modelandview = new ModelAndView("welcome");
				return modelandview;
				
			} else {
				
				ModelAndView modelandview = new ModelAndView("login");
				return modelandview;
				
				//TODO add error message
				
			}
			
		} else if(action.equals("/Healthy-Life-Git/logout.html")) {
			
			session.setAttribute("username", null);
			session.setAttribute("sex", null);
			currentUser.logOut();
			ModelAndView modelandview = new ModelAndView("welcome");
			return modelandview;
			
		} else if(action.equals("/Healthy-Life-Git/signup.html")) {
		
			String signUp = currentUser.signUp(request.getParameter("username"), request.getParameter("password"), request.getParameter("sex"));				
			System.out.println(signUp);
			
			if (signUp == "Sucess") {
				session.setAttribute("username", currentUser.getUsername());
				session.setAttribute("sex", currentUser.getSex());
				
				ModelAndView modelandview = new ModelAndView("welcome");
				return modelandview;
			} else {
				ModelAndView modelandview = new ModelAndView("signup");
				return modelandview;
			}
			
		} else if(action.equals("/Healthy-Life-Git/addTarget.html")) {
			
			//write code
			
			ModelAndView modelandview = new ModelAndView("charts&Progress");
			return modelandview;
			
			
		} else if(action.equals("/Healthy-Life-Git/recordMeal.html")) {
			
			Meal meal = new Meal();
			String mealDateTime = request.getParameter("mealDate") + " " + request.getParameter("mealTime") + ":00" ;
			Integer eventId= meal.setEventProperties(currentUser.getUsername(), mealDateTime);
			
			
			meal.setEventSpecificProperties(
					eventId, request.getParameter("mealTitle"), request.getParameter("mealDesc"), 
					request.getParameter("mealLoc"), request.getParameter("type"), request.getParameter("mealWeight"), 
					request.getParameter("mealCal"), request.getParameter("f&v"), request.getParameter("carb"), 
					request.getParameter("protein"), request.getParameter("dairy"), request.getParameter("o&s"), 
					request.getParameter("jF")
			);
			
			String x = eventId.toString();
			
			currentUser.addToMeals(x, meal);
			
			//System.out.println(mealDateTime);			
			
			
			ModelAndView modelandview = new ModelAndView("mealHistory");
			return modelandview;
			
		} else if(action.equals("/Healthy-Life-Git/setDietReq.html")) {
			
			if(currentUser.getUsername() != null) {
				String V; if(request.getParameter("Vegetarian") != null){V = "V,";} else {V="";};
				String VV; if(request.getParameter("Vegan") != null){VV = "VV,";}else{VV = "";};
				String L; if(request.getParameter("LacInt") != null){L = "L,";}else{L = "";};
				String G; if(request.getParameter("GlucInt") != null){G = "G,";}else{G = "";};
				String N; if(request.getParameter("NutAlg") != null){N = "N,";}else{N = "";};
				String K; if(request.getParameter("Kosher") != null){K = "K,";}else{K = "";};
				String H; if(request.getParameter("Halal") != null){H = "H";}else{H = "";};
			
				currentUser.submitDietReqs(V+VV+L+G+N+K+H);	
				ModelAndView modelandview = new ModelAndView("foodSettings");
				return modelandview;
				
			} else {
				ModelAndView modelandview = new ModelAndView("foodSettings");
				return modelandview;
			}
			
		} else if(action.equals("/Healthy-Life-Git/setDistance.html")) {
		
			if(currentUser.getUsername() != null) {
				currentUser.setGymDistance(request.getParameter("gyDiHR"), request.getParameter("gyDiMi"));
				currentUser.setParkDistance(request.getParameter("pkDiHR"), request.getParameter("pkDiMi"));
				
				ModelAndView modelandview = new ModelAndView("exerciseSettings");
				return modelandview;
				
			} else {
			
				ModelAndView modelandview = new ModelAndView("exerciseSettings");
				return modelandview;
			}
		} else if(action.equals("/Healthy-Life-Git/addScheduleItem.html")) {
		
			System.out.println(request.getParameter("event"));
			
			if(request.getParameter("event").equals("Meal")) {
				ScheduleItem s = new ScheduleItem();
				
				int day = 0;
				switch(request.getParameter("day")) {
					case "Monday": day = 1; break;
					case "Tuesday": day = 2; break;
					case "Wednesday": day = 3; break;
					case "Thursday": day = 4; break;
					case "Friday": day = 5; break;
					case "Saturday": day = 6; break;
					case "Sunday": day = 7; break;
				}
								
				
				Integer id = s.setItemProperties(currentUser.getUsername(), "food", request.getParameter("type"), day, request.getParameter("time"), request.getParameter("dur"));
				
				currentUser.addToScheduleItems(id.toString(), s); 
				
				ModelAndView modelandview = new ModelAndView("foodSettings");
				return modelandview;
			} else{
				ModelAndView modelandview = new ModelAndView("welcome");
				return modelandview;
			}
			
		} else if(action.equals("/Healthy-Life-Git/mealHistory.html")) {
			currentUser.getUserMeals();
			ModelAndView modelandview = new ModelAndView("mealHistory");
			return modelandview;
		
		} else if(action.equals("/Healthy-Life-Git/mealSettings.html")) {
			currentUser.getUserSchedule();
			ModelAndView modelandview = new ModelAndView("foodSettings");
			return modelandview;
			
		}	
		
		ModelAndView modelandview = new ModelAndView("welcome");
		modelandview.addObject("welcomeMessage", "Welcome to the Healthy Life Portal");
		return modelandview;
	}
	
}
