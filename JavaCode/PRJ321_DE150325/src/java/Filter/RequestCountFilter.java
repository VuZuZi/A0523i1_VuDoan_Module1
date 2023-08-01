/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author dinhv
 */
public class RequestCountFilter {
      private int requestCount;

    public void init(FilterConfig config) throws ServletException {
        requestCount = 0;
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        requestCount++;

        request.setAttribute("requestCount", requestCount);

        chain.doFilter(request, response);
    }

    public void destroy() {
    }
}
