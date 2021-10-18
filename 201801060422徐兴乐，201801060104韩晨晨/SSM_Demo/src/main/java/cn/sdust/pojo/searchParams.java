package cn.sdust.pojo;

import javax.swing.*;
import java.util.Date;

public class searchParams {
    private int searchType;
    private int visible;
    private String ownerUserId;
    private String groupId;
    private int offset;
    private int pageSize;
    private String sortField;
    private int sortOrder;
    private String or;
    private String categoryId;
    private String publicGroupId;
    private Date startCategoryChangeDate;
    private Date endCategoryChangeDate;
    private  Date startNextContactDate;
    private  Date endNextContactDate;
    private  Date startCreateDate;
    private  Date endCreateDate;
    private  Date startStatusChangeDate;
    private Date endStatusChangeDate;
    private Date  contactDate;
    private Date startAssignDate;
    private  Date endAssignDate;
    private  String status;
    private int searchFieldType;
    private  String searchFieldId;
    private  String searchKey;
    public searchParams(){

    }

    public searchParams(int searchType, int visible, String ownerUserId, String groupId, int offset, int pageSize, String sortField, int sortOrder, String or, String categoryId, String publicGroupId, Date startCategoryChangeDate, Date endCategoryChangeDate, Date startNextContactDate, Date endNextContactDate, Date startCreateDate, Date endCreateDate, Date startStatusChangeDate, Date endStatusChangeDate, Date contactDate, Date startAssignDate, Date endAssignDate, String status, int searchFieldType, String searchFieldId, String searchKey) {
        this.searchType = searchType;
        this.visible = visible;
        this.ownerUserId = ownerUserId;
        this.groupId = groupId;
        this.offset = offset;
        this.pageSize = pageSize;
        this.sortField = sortField;
        this.sortOrder = sortOrder;
        this.or = or;
        this.categoryId = categoryId;
        this.publicGroupId = publicGroupId;
        this.startCategoryChangeDate = startCategoryChangeDate;
        this.endCategoryChangeDate = endCategoryChangeDate;
        this.startNextContactDate = startNextContactDate;
        this.endNextContactDate = endNextContactDate;
        this.startCreateDate = startCreateDate;
        this.endCreateDate = endCreateDate;
        this.startStatusChangeDate = startStatusChangeDate;
        this.endStatusChangeDate = endStatusChangeDate;
        this.contactDate = contactDate;
        this.startAssignDate = startAssignDate;
        this.endAssignDate = endAssignDate;
        this.status = status;
        this.searchFieldType = searchFieldType;
        this.searchFieldId = searchFieldId;
        this.searchKey = searchKey;
    }

    public String getOr() {
        return or;
    }

    public void setOr(String or) {
        this.or = or;
    }

    public int getSearchType() {
        return searchType;
    }

    public void setSearchType(int searchType) {
        this.searchType = searchType;
    }

    public int getVisible() {
        return visible;
    }

    public void setVisible(int visible) {
        this.visible = visible;
    }

    public String getOwnerUserId() {
        return ownerUserId;
    }

    public void setOwnerUserId(String ownerUserId) {
        this.ownerUserId = ownerUserId;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getSortField() {
        return sortField;
    }

    public void setSortField(String sortField) {
        this.sortField = sortField;
    }

    public int getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(int sortOrder) {
        this.sortOrder = sortOrder;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getPublicGroupId() {
        return publicGroupId;
    }

    public void setPublicGroupId(String publicGroupId) {
        this.publicGroupId = publicGroupId;
    }

    public Date getStartCategoryChangeDate() {
        return startCategoryChangeDate;
    }

    public void setStartCategoryChangeDate(Date startCategoryChangeDate) {
        this.startCategoryChangeDate = startCategoryChangeDate;
    }

    public Date getEndCategoryChangeDate() {
        return endCategoryChangeDate;
    }

    public void setEndCategoryChangeDate(Date endCategoryChangeDate) {
        this.endCategoryChangeDate = endCategoryChangeDate;
    }

    public Date getStartNextContactDate() {
        return startNextContactDate;
    }

    public void setStartNextContactDate(Date startNextContactDate) {
        this.startNextContactDate = startNextContactDate;
    }

    public Date getEndNextContactDate() {
        return endNextContactDate;
    }

    public void setEndNextContactDate(Date endNextContactDate) {
        this.endNextContactDate = endNextContactDate;
    }

    public Date getStartCreateDate() {
        return startCreateDate;
    }

    public void setStartCreateDate(Date startCreateDate) {
        this.startCreateDate = startCreateDate;
    }

    public Date getEndCreateDate() {
        return endCreateDate;
    }

    public void setEndCreateDate(Date endCreateDate) {
        this.endCreateDate = endCreateDate;
    }

    public Date getStartStatusChangeDate() {
        return startStatusChangeDate;
    }

    public void setStartStatusChangeDate(Date startStatusChangeDate) {
        this.startStatusChangeDate = startStatusChangeDate;
    }

    public Date getEndStatusChangeDate() {
        return endStatusChangeDate;
    }

    public void setEndStatusChangeDate(Date endStatusChangeDate) {
        this.endStatusChangeDate = endStatusChangeDate;
    }

    public Date getContactDate() {
        return contactDate;
    }

    public void setContactDate(Date contactDate) {
        this.contactDate = contactDate;
    }

    public Date getStartAssignDate() {
        return startAssignDate;
    }

    public void setStartAssignDate(Date startAssignDate) {
        this.startAssignDate = startAssignDate;
    }

    public Date getEndAssignDate() {
        return endAssignDate;
    }

    public void setEndAssignDate(Date endAssignDate) {
        this.endAssignDate = endAssignDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getSearchFieldType() {
        return searchFieldType;
    }

    public void setSearchFieldType(int searchFieldType) {
        this.searchFieldType = searchFieldType;
    }

    public String getSearchFieldId() {
        return searchFieldId;
    }

    public void setSearchFieldId(String searchFieldId) {
        this.searchFieldId = searchFieldId;
    }

    public String getSearchKey() {
        return searchKey;
    }

    public void setSearchKey(String searchKey) {
        this.searchKey = searchKey;
    }
}