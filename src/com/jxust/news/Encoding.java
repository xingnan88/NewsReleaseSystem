package com.jxust.news;

import java.io.UnsupportedEncodingException;

public class Encoding {
	public String encoding(String s) throws UnsupportedEncodingException
	{
		return new String(s.getBytes("ISO-8859-1"),"utf-8");
	}
}
