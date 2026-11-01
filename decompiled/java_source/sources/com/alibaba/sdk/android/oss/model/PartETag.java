package com.alibaba.sdk.android.oss.model;

/* JADX INFO: loaded from: classes2.dex */
public class PartETag {
    private long crc64;
    private String eTag;
    private int partNumber;
    private long partSize;

    public PartETag(int i11, String str) {
        setPartNumber(i11);
        setETag(str);
    }

    public long getCRC64() {
        return this.crc64;
    }

    public String getETag() {
        return this.eTag;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getPartSize() {
        return this.partSize;
    }

    public void setCRC64(long j11) {
        this.crc64 = j11;
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setPartNumber(int i11) {
        this.partNumber = i11;
    }

    public void setPartSize(long j11) {
        this.partSize = j11;
    }
}
