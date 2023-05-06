package vista;

import static vista.Util.isNotEmpty;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.User;
import negocio.RegistroLogin;
import negocio.RegistroLoginImpl;

@WebServlet("/home/*")
@SuppressWarnings("serial")
public class Controller extends HttpServlet {

	private String context;
	private RegistroLogin rl;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = req.getPathInfo();
		
		HttpSession sesion = req.getSession(true);
		
		if(req.getSession().getAttribute("user_reg") != null) {
			switch(path) {
			case "/index":
				req.getRequestDispatcher("/WEB-INF/vistas/index.jsp").forward(req, resp);
				break;
			}
		} else {
			switch(path) {
			case "/registro":
				req.getRequestDispatcher("/WEB-INF/vistas/register.jsp").forward(req, resp);
				break;
			default:
				req.getRequestDispatcher("/WEB-INF/vistas/login.jsp").forward(req, resp);
				break;
			}
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = req.getPathInfo();
		
		HttpSession sesion = req.getSession(true);
		
		switch (path) {
		case "/login":
		{
			String user = req.getParameter("username");
			String pwd = req.getParameter("password");
			if(isNotEmpty(user) && isNotEmpty(pwd)) {
				User logged = rl.login(user, pwd);
				if (logged != null) {
					sesion.setAttribute("user_reg", logged);
					resp.sendRedirect(context + "/home/index");
				} else {
					resp.sendRedirect(context + "/home/login");
				}
			}
		}
		break;
		case "/registro":
		{
			String user = req.getParameter("username");
			String email = req.getParameter("email");
			String gender = req.getParameter("gender");
			String orientation = req.getParameter("s_orientation");
			String password = req.getParameter("password");
			String password2 = req.getParameter("password2");
			
			if (isNotEmpty(user) && isNotEmpty(email) && isNotEmpty(gender) && isNotEmpty(orientation) && isNotEmpty(password) && isNotEmpty(password2)) {
				if(password.equals(password2)) {
					User nuevo = new User(user, email, gender, orientation, password);
					if(rl.registro(nuevo)) {
						resp.sendRedirect(context + "/home/index");
						System.out.println("usuario registrado");
					}
				}
			}
		}
		break;

		default:
			break;
		}
	}
	
	@Override
	public void init() throws ServletException {
		ServletContext app = getServletContext();
		context = app.getContextPath();
		
		app.setAttribute("context", app.getContextPath());
		app.setAttribute("home", app.getContextPath() + "/home");
		app.setAttribute("js", app.getContextPath() + "/js");
		app.setAttribute("css", app.getContextPath() + "/css");
		app.setAttribute("images", app.getContextPath() + "/images");
		
		rl = new RegistroLoginImpl();
	}
}
