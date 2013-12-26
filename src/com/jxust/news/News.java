package com.jxust.news;

public class News
{
	private int id;
	private String title;
	private String content;
	private String pubtime;
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
	public String getPubtime()
	{
		return pubtime;
	}
	public void setPubtime(String pubtime)
	{
		this.pubtime = pubtime;
	}
	public int getTypeId()
	{
		return typeId;
	}
	public void setTypeId(int typeId)
	{
		this.typeId = typeId;
	}	
}
