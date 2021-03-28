package servlets;

import java.io.IOException;
import java.time.*;
import javax.servlet.http.*;
import model.Search;

public class SearchServlet extends HttpServlet {

    @Override
    public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Search.date = req.getParameter("date");
        Search.source = req.getParameter("source");
        Search.destination = req.getParameter("destination");
        Search.persons = Integer.parseInt(req.getParameter("persons"));
        Search.day = getDay(Search.date);

        resp.sendRedirect("/search-results.jsp");
    }

    public String getDay(String dateInp) {
        LocalDate dt = LocalDate.parse(dateInp);
        return dt.getDayOfWeek().toString();
    }
}
