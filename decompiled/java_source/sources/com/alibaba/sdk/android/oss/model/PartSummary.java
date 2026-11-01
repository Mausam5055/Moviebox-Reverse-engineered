package com.alibaba.sdk.android.oss.model;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class PartSummary {
    private String eTag;
    private Date lastModified;
    private int partNumber;
    private long size;

    public String getETag() {
        return this.eTag;
    }

    public Date getLastModified() {
        return this.lastModified;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getSize() {
        return this.size;
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setLastModified(Date date) {
        this.lastModified = date;
    }

    public void setPartNumber(int i11) {
        this.partNumber = i11;
    }

    public void setSize(long j11) {
        this.size = j11;
    }
}
