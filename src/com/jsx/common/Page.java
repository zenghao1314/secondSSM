package com.jsx.common;

import java.util.List;

/**
 * created by XX_zh
 * date 2018/7/2 10:48
 * XX_zh Produced, must be fine
 *   分页
 */
public class Page<T> {
    private int firstIndex;
    private int pageSize=10;
    private int pageCount=1;
    private int totalPageCount;
    private int totalDataCount;
    private List<T> list;

    public int getFirstIndex() {
        return (this.getPageCount()-1)*this.getPageSize();
    }

    public void setFirstIndex(int firstIndex) {
        this.firstIndex = firstIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getTotalPageCount() {
        return (this.getTotalDataCount()-1)/this.getPageSize()+1;
    }

    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount = totalPageCount;
    }

    public int getTotalDataCount() {
        return totalDataCount;
    }

    public void setTotalDataCount(int totalDataCount) {
        this.totalDataCount = totalDataCount;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
