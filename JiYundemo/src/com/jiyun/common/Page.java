package com.jiyun.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * 分页类
 * @author 浩
 *
 * @param <T>
 */
public final class Page<T> {

	public Page() {
		super();
	}

	public static final int DEFAULT_PAGE_SIZE = 5;
	//总记录数
	private int count;
	//每页多少记录
	private int pageSize;
	//总页数
	private int pageCount;
	//当前页码
	private int currentPage;
	private int previousPage;
	private int nextPage;
	private int startRecord;
	private int endRecord;
	
	private List<T> list;
	
	private Map<Object,Object> map = new HashMap<Object,Object>();

	public Map<Object, Object> getMap() {
		return map;
	}

	public void setMap(Map<Object, Object> map) {
		this.map = map;
	}

	public Page(String current, int count, String pageSize) {
		this.count = count;
		init(current, pageSize);
	}

	private void init(String current, String size) {
		initPageSize(size);
		initPageCount();
		initCurrentPage(current);
		initPreviousPage();
		initNextPage();
		initStartRecord();
		initEndRecord();
	}

	private void initPageSize(String size) {
		if (size == null || size.trim().isEmpty()) {
			pageSize = DEFAULT_PAGE_SIZE;
			return;
		}
		try {
			pageSize = Integer.parseInt(size);
		} catch (Exception e) {
			pageSize = DEFAULT_PAGE_SIZE;
		}
	}

	private void initEndRecord() {
		endRecord = startRecord + pageSize - 1;
		if (endRecord > count) {
			endRecord = count;
		}
	}

	private void initStartRecord() {
		startRecord = (currentPage - 1) * pageSize;
		if (startRecord < 0) {
			startRecord = 0;
		}
		if (startRecord > count) {
			startRecord = count;
		}
	}

	private void initNextPage() {
		nextPage = currentPage + 1;
		if (nextPage > pageCount) {
			nextPage = pageCount;
		}
	}

	private void initPreviousPage() {
		previousPage = currentPage - 1;
		if (previousPage < 1) {
			previousPage = 1;
		}
	}

	private void initCurrentPage(String current) {
		if (current == null || current.trim().isEmpty()) {
			currentPage = 1;
			return;
		}
		try {
			currentPage = Integer.parseInt(current);
		} catch (Exception e) {
			currentPage = 1;
		}
		if (currentPage < 1) {
			currentPage = 1;
			return;
		}
		if (currentPage > pageCount) {
			currentPage = pageCount;
		}
	}

	private void initPageCount() {
		pageCount = count / pageSize;
		if (count % pageSize != 0) {
			pageCount++;
		}
	}

	public int getCount() {
		return count;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}



	public int getPreviousPage() {
		return previousPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getStartRecord() {
		return startRecord;
	}

	public int getEndRecord() {
		return endRecord;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}


	

	

}
