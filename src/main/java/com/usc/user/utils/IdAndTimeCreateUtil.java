package com.usc.user.utils;

import java.io.IOException;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import sun.misc.BASE64Encoder;
/**
 * 生成id和编�??
 * @author Administrator
 *
 */
public class IdAndTimeCreateUtil {
	//生成id
	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
	}
	//生成编号
	public static String getNumber(String str){
		String millisecond = String.valueOf(System.currentTimeMillis());
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String number = str+format.format(date).replace("-", "")+millisecond.substring(millisecond.length()-8, millisecond.length());
		return number;
	}
	//获取当前时间
	public static String getTime(){
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(date);
	}
	/**
	 * 将String字符转为日期
	 * @param dateTime 要转的字�??
	 * @return 返回转化的日�??
	 */
	public static Calendar getCalendar(String dateTime){
		
		
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm:SSS");
		Calendar calendar=new GregorianCalendar();
		Date date=null;
		try {
			date= sdf.parse(dateTime);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
		calendar.setTime(date);
		return calendar;
	}
	/**
	 * 返回两个日历之间相隔多少�??
	 * @param cld1 要计算的日历
	 * @param cld2 要计算的日历
	 * @return 返回cld1比cld多多少天
	 */
	public static int compareCalendar(Calendar cld1,Calendar cld2){
		long difference=cld1.getTimeInMillis()-cld2.getTimeInMillis();   
		int day=(int) (difference/(3600*24*1000)); 
		return day;
	}
	
	// 用来对下载的文件名称进行编码的！
	public static String filenameEncoding(String filename, HttpServletRequest request) throws IOException {
		String agent = request.getHeader("User-Agent"); //获取浏览�??
		if (agent.contains("Firefox")) {
			BASE64Encoder base64Encoder = new BASE64Encoder();
			filename = "=?utf-8?B?"
					+ base64Encoder.encode(filename.getBytes("utf-8"))
					+ "?=";
		} else if(agent.contains("MSIE")) {
			filename = URLEncoder.encode(filename, "utf-8");
		} else {
			filename = URLEncoder.encode(filename, "utf-8");
		}
		return filename;
	}
	
	
	
	
}
