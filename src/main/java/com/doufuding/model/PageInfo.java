package com.doufuding.model;

/**
 * 分页信息
 * 这个类在项目中较常用，建议收藏，并在此基础上逐步扩展。
 */
public class PageInfo {

	/**
	 * 每页最大记录数
	 */
	private int rowsPerPage = 10;

	/**
	 * 实际记录数
	 */
	private long rows;

	/**
	 * 第几页，默认是第一页,从1开始计数
	 */
	private int pageNum = 1;

	public PageInfo(int pageNum) {
		if(pageNum < 1){
			throw new RuntimeException("页数必须大于等于1");
		}
		this.pageNum = pageNum;
	}

	public int getRowsPerPage() {
		return rowsPerPage;
	}

	public void setRowsPerPage(int rowsPerPage) {
		this.rowsPerPage = rowsPerPage;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public long getRows() {
		return rows;
	}

	public void setRows(long rows) {
		this.rows = rows;
	}

	/**
	 * 从0开始
	 * 
	 * @return 开始记录数
	 */
	public int getStartPosition(){
		return rowsPerPage * (pageNum - 1);
	}

	/**
	 * 实际页数
	 */
	public long getPageCount() {
		if(rows == 0) return 0;
		int mod = (int) (rows % rowsPerPage);
		return rows/rowsPerPage + (mod > 0 ? 1 : 0);
	}

	/**
	 * 判断指定的页数是否在有效的范围内。
	 * 
	 * @return 是否在有效的范围内，true在有效范围内；false不在有效范围内。
	 */
	public boolean isInValidRange() {
		long pageCount = getPageCount();

		if(pageNum == 1 && pageCount == 0){
			return true;
		}

		if(0 < pageNum && pageNum <= pageCount){
			return true;
		}

		return false;
	}
}