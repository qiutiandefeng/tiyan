package com.yfhl.tiyan.common.web;
/***
 * 基础的controller类
 * @author ygq
 *
 */

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
/***
 * @ClassName: BaseController
 * @Description:
 * 		TODO 基本的控制类
 * @Date:     2014-12-19 下午5:46:27
 * @author    ygq
 * @version   mis_alpha
 * @since     JDK 1.6
 */
public class BaseController{
	protected HttpServletRequest request;
	protected HttpServletResponse response;
//	protected HttpSession session;
	protected int querytype;//查询类型
	protected String condition;//查询条件
	protected String message;
	@ModelAttribute
	public void setReqAndResponse(HttpServletRequest request,HttpServletResponse response){
		this.request = request;
		this.response = response;
	}
	/**
	 * 返回json格式的字符串
	 */
	protected String json;
	public int getQuerytype() {
		return querytype;
	}
	public void setQuerytype(int querytype) {
		this.querytype = querytype;
	}
	public String getCondition() {
		return condition==null?"":condition.trim();
	}
	public void setCondition(String condition) {
		this.condition=(condition==null?"":condition.trim());
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getJson() {
		return json;
	}
	public void setJson(String json) {
		this.json = json;
	}
	/**
	 * 
	 * 描述：将json格式的字符串写到客户端
	 * 2012-12-29 下午03:15:41 by ygq
	 * @version
	 * @param json
	 * @throws Exception
	 */
	public void writerJsonToClient(HttpServletResponse response,String json) throws Exception{
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}
	/**
	 * 
	 * 描述：将json格式的字符串写到客户端
	 * 增加了	request.setCharacterEncoding("utf-8");
	 * 2012-12-29 下午03:15:41 by ygq
	 * @version
	 * @param json
	 * @throws Exception
	 */
	public void writerJsonToClientEncode(HttpServletRequest request,HttpServletResponse response,String json) throws Exception{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}
}
