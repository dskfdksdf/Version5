package com.usc.user.utils;

import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
public class IdGenertor {
	
	public static String generateGUID() {
        return new BigInteger(165, new Random()).toString(36).toUpperCase();
    }
	
	public static String generateOrdersNum() {
		Date now = new Date();
		DateFormat df = new SimpleDateFormat("yyyyMMdd");
		String str = df.format(now);
		return str+System.nanoTime();
	}
	
	public static void main(String[] args) {
		System.out.println(generateGUID());
	}
}
