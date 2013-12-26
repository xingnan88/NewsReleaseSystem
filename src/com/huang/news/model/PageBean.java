package com.huang.news.model;

import java.util.ArrayList;

public class PageBean {
	
	private ArrayList list = new ArrayList();
	private int prePage;
	private int nextPage;
	private int totalPage;
	private int currPage;
	
	
	public ArrayList getList() {
		return list;
	}


	public void setList(ArrayList list) {
		this.list = list;
	}


	public int getPrePage() {
		return prePage;
	}


	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}


	public int getNextPage() {
		return nextPage;
	}


	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}


	public PageBean(ArrayList list,String pageNOStr, int countPerPage) {
		int pageNO;		
		try {
			pageNO = Integer.parseInt(pageNOStr);
		}catch(Exception ex) {
			pageNO = 1;
		}
		pageNO = pageNO < 1 ? 1 : pageNO;
		
		int totalCount = list.size();
		int totalPage;
		if(totalCount == 0) {
			totalPage = 1;
		}else {
			totalPage =totalCount % countPerPage == 0 ? totalCount/countPerPage : totalCount/countPerPage + 1; 
		}		
		pageNO = pageNO > totalPage ? 1 : pageNO;
		
		this.currPage = pageNO;		this.prePage = pageNO == 1 ? 1 : pageNO - 1;
		this.nextPage = pageNO == totalPage ? totalPage : pageNO + 1;
		this.totalPage = totalPage;	
		int count = 0;
		for(int i = (pageNO - 1)*countPerPage; i < list.size(); i++) {
			if(count==countPerPage){
				break;
			}
			this.list.add(list.get(i));
			count++;
		}
		
	}


	public int getCurrPage() {
		return currPage;
	}


	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
}