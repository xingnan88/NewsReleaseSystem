package com.huang.news.util;

import java.io.UnsupportedEncodingException;

public class Encoding {
	public static String encoding(String s) throws UnsupportedEncodingException
	{
		return new String(s.getBytes("ISO-8859-1"),"gbk");
	}
	
}
