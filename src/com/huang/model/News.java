package com.huang.model;

import java.util.Date;

public class News
{
	private int id;
	private String title;
	private String author;
	private String content;
	private Date pubtime;
	private int typeId;

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public int getTypeId()
	{
		return typeId;
	}

	public void setTypeId(int typeId)
	{
		this.typeId = typeId;
	}

	public String getAuthor()
	{
		return author;
	}

	public void setAuthor(String author)
	{
		this.author = author;
	}

	public Date getPubtime()
	{
		return pubtime;
	}

	public void setPubtime(Date pubtime)
	{
		this.pubtime = pubtime;
	}
}
