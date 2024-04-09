package servlet.todo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * /todo/TodoDetailServlet
 * 
 * @author nsr
 * @since 2024-04-08
 **/
@WebServlet("/todo/TodoDetailServlet")
public class TodoDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TodoDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	}

}