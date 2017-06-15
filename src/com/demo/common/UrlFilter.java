package com.demo.common;

/**

 * ClassName:LoginFilter

 *

 * @Description:过滤器，白名单里所有接口都要先经过此过滤器，白名单请在web.xml中设置

 * @author dingjingjing058

 * @date 2016年5月13日

 */


public class UrlFilter {

	/*public Logger logger = Logger.getLogger(this.getClass());

	@Override
	public void destroy() {

		// TODO Auto-generated method stub

	}

	@SuppressWarnings("rawtypes")
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain)

	throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;

		HttpServletResponse response = (HttpServletResponse) res;

		request.setCharacterEncoding("UTF-8");

		// 获得用户请求的URI,并进行截取

		String url = request.getRequestURI();

		String[] path = url.split("/");

		// System.out.println(path);

		Enumeration enu = request.getParameterNames();

		String paraString = "";

		while (enu.hasMoreElements()) {

			String paraName = (String) enu.nextElement();

			paraString = paraString + paraName + ":"
					+ request.getParameter(paraName) + "";

		}

		logger.info("用户请求地址为:" + url + "请求参数为:" + paraString);

		if (url.contains("baidu")) {// 如果不在白名单，则进行如下校验

			String method = request.getMethod();

			if (method.equals("POST"))

				method = "post";

			else if (method.equals("GET"))

				method = "get";

			BasicParameter bp1 = new BasicParameter(url, "get", "FILTER");

			enu = request.getParameterNames();

			while (enu.hasMoreElements()) {

				String paraName = (String) enu.nextElement();

				bp1.addParamters(paraName, request.getParameter(paraName));

				Enumeration en = request.getHeaderNames();

				Map headers = new HashMap();

				while (en.hasMoreElements()) {

					// 取出信息名

					String name = (String) en.nextElement();

					// 取出信息值

					String value = request.getHeader(name);

					headers.put(name, value);

				}

				bp1.setHeaders(headers);

			}

			List rps = new ArrayList();

			try {

				HttpClientHelper client = new HttpClientHelper(
						request.getServerName(), request.getServerPort(),
						"http");

				client.addHttpRequest(bp1);

				rps = client.run();

			} catch (Exception e1) {

				// TODO Auto-generatedcatch block

				e1.printStackTrace();

			}

			for (Map.Entry en : rps.get(0).getHeaders().entrySet())

			{

				response.addHeader(en.getKey(), en.getValue());

			}

			response.setContentType("text/html");

			response.setCharacterEncoding("UTF-8");

			PrintWriter out = response.getWriter();

			out.print(rps.get(0).getRespdata());

			out.flush();

			out.close();

			// response.sendRedirect("./login.html");

			// chain.doFilter(request,response);

			// 已经登陆,继续此次请求

		}

		else

		{

			// 在白名单里,继续此次请求

			chain.doFilter(request, response);

		}

	}

	@Override
	public void init(FilterConfig config) throws ServletException {

	}
*/
}
