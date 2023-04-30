package com.exam.midterm;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "movies", value = "/movies")
public class MovieServlet extends HttpServlet {
    public void init() {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<a href='index.jsp'>Movies</a>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}