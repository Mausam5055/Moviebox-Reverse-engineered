package com.aliyun.private_service;

/* JADX INFO: loaded from: classes2.dex */
public class TbDrmDemuxerInfo {
    private long contextAddr;
    private long createAddr;
    private long releaseAddr;

    private void setContextAddr(long j11) {
        this.contextAddr = j11;
    }

    private void setCreateAddr(long j11) {
        this.createAddr = j11;
    }

    private void setReleaseAddr(long j11) {
        this.releaseAddr = j11;
    }

    public long getContextAddr() {
        return this.contextAddr;
    }

    public long getCreateAddr() {
        return this.createAddr;
    }

    public long getReleaseAddr() {
        return this.releaseAddr;
    }
}
